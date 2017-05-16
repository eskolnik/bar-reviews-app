import React from 'react';
import { Link } from 'react-router';
import BackButton from './BackButton.js';
// import '../styles/Layout.css'

const Layout = (props) => {
  return(
    <div className="layout">
      <BackButton />

      <span>
        When I grow up, I will be a dope header.
      </span>
      <br />

      <Link to='/'> HOME </Link>
      <br />
      
      <Link to='/bars'>'/bars/'</Link>


      <h1 className="page-title"> Bars </h1>
      { props.children }
    </div>
  )
}

export default Layout;
