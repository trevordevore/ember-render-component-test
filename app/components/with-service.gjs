import Component from '@glimmer/component';
import { service } from '@ember/service';

export default class ComponentWithService extends Component {
  @service myService;

  sayHello = () => {
    return this.myService.hello();
  };

  <template>
    <p>{{this.sayHello}}</p>
  </template>
}
