import React from 'react'
import { render } from 'react-dom'
import { browserHistory, Route, Router, IndexRoute } from 'react-router';
import Layout from './components/Layout'
import BarContainer from './containers/BarContainer'
import BarsContainer from './containers/BarsContainer'

render((
  <Router history={browserHistory}>
    <Route path="/" component={Layout}>
      <IndexRoute component={BarsContainer} />  
      <Route path="/bars" component={BarsContainer} />
      <Route path="/bars/:id" component={BarContainer} />
    </Route>
  </Router>
), document.getElementById('app'))
