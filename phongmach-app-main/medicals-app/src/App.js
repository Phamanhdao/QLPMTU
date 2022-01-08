//import logo from './logo.svg';
import './App.css';
import React from 'react';
import Home from "./Home.js";
import Header from './Header';
import { BrowserRouter, Routes, Route} from 'react-router-dom';
import Register from './Register.js';
import { Container } from 'react-bootstrap';
import Login from './Login';



class App extends React.Component{
  render(){
    return ( 
     <Container>
        <BrowserRouter>
            <Header />
            <Routes>
              <Route path='/home' element={<Home />}></Route>
              <Route path='/register' element={<Register />}></Route>
              <Route path='/login' element={<Login />}></Route>
            </Routes>
        </BrowserRouter>
     </Container>
      )
  }
}

export default App;
