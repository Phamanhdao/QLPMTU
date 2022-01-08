import React, {useState} from "react"
import { Button, Form } from "react-bootstrap"
import API, { endpoints } from "./API"
import cookies  from 'react-cookies'


export default function Login(props){
   const [username, setUsername] = useState(null)
   const [password, setPassword] = useState(null)

   const login = async (event) => {
       event.preventDefault()

      let res = await API.post(endpoints['login'], {
           'client_id': 'SneXboD60d3vipOR5ZpebtZ2dnwh8LgF1hKDbtqc',
           'client_secret': 'TFTzOMKiaRqv5gnvRQgTNPiVeIRuOsWYIRoB0ZQIWEQ0LCCk5tfboNsd2qpz8Ap3j4uJ3M8tMtlZEg1R1O1it38THscs0t7mhwoBTnOADI13VaclLBTOaJFuk9qg45Iq',
           'username': username,
           'password': password,
           'grant_type': 'password'
       })
       console.info(res.data)
       cookies.save("access_token", res.data.access_token)

       let user = await API.get(endpoints['current_user'],{
            headers: {
                'Authorization': `Bearer ${cookies.load('access_token')}`
            }
        })
       console.info(user.data)
       cookies.save("user", user.data)

       props.history.push("/")
   }

    return(
        <>
            <h1 className="text-center">Đăng nhập</h1>
           <Form onSubmit={login}>
                <LoginForm id="username" type="text" field={username} change={event => setUsername(event.target.value)}/>
                <LoginForm id="password" type="password" field={password} change={event => setPassword(event.target.value)}/>
                <Button type="submit">Đăng nhập</Button>
           </Form>
        </>
    )
}
class LoginForm extends React.Component{
    render(){
        return(
            <Form.Group className="mb-3" controlId={this.props.id}>
                <Form.Label>{this.props.label}</Form.Label>
                <Form.Control type={this.props.type} value={this.props.field} 
                    onChange={this.props.change}/>
            </Form.Group>
        )
    }
}