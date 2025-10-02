import Component from '@glimmer/component';
import HostComponentWithService from './host-component-with-service.gjs';
import { renderComponent } from '@ember/renderer';
import { getOwner } from '@ember/application';

export default class RenderMeComponent extends Component {
  get renderedComponent() {
    const application = getOwner(this);
    const element = document.getElementById('rendered-component');

    renderComponent(HostComponentWithService, {
      // 1) What doesn't work in more complex application
      owner: application,
      // 2) What does work
      // owner: {
      //   lookup(specifier) {
      //     return application.lookup(specifier);
      //   },
      // },
      into: element,
    });
  }

  <template>
    <h1>Render Me</h1>

    <p>A message from our sponsor:</p>

    <div id="rendered-component">
      {{this.renderedComponent}}
    </div>
  </template>
}
