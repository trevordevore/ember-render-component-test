import { pageTitle } from 'ember-page-title';
import RenderComponent from 'ember-render-component-test/components/render-component.gjs';

<template>
  {{pageTitle "RenderComponentTest"}}

  {{outlet}}

  <RenderComponent />
</template>
