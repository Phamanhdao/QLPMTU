import axios from "axios";

export let endpoints = {
    'users': '/users/',
    'login': '/o/token/'
}

export default axios.create({
    baseURL: 'http://127.0.0.1:8000/',
})