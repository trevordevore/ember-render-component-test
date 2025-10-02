import EmberRouter from '@embroider/router';
import config from 'ember-render-component-test/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {});
