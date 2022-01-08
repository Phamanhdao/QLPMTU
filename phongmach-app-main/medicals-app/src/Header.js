import React from "react";
// import { Link } from "react-router-dom";
// import API, { endpoints } from "./API";
import { Navbar, Nav} from "react-bootstrap";
import 'bootstrap/dist/css/bootstrap.min.css';
import cookies from "react-cookies";

class Header extends React.Component{
    
    
    render(){
        let user = cookies.load("user")
        let u = <>
            <Nav.Link href="/register">Đăng ký</Nav.Link>
            <Nav.Link href="/login">Đăng nhập</Nav.Link>
        </>
        if (user != null)
            u = <Nav.Link href="/home">{user.username}</Nav.Link>
        return(
            <>
               <Navbar bg="light" expand="lg">
                    <Navbar.Brand>Phòng mạch OTC</Navbar.Brand>
                    <Navbar.Toggle aria-controls="basic-navbar-nav" />
                    <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="mr-auto">
                            <Nav.Link href="/home">Trang chủ</Nav.Link>
                            <Nav.Link href="#link">Liên hệ</Nav.Link>
                            {u}
                        </Nav>
                    </Navbar.Collapse>
                </Navbar>
            </>
            
        )
    }
   
}

export default Header