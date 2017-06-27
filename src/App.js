import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="App-header">
          <h2>Pantheon</h2>
          <h3>The new gods demand tribute.</h3>
        </div>
        <div className="signup">
          <button className="wikipedia-login">Log in</button>
          <p>with your Wikipedia account</p>
        </div>
      </div>
    );
  }
}

export default App;
