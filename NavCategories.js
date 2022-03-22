import React, { Component } from 'react';
import { Link } from 'react-router-dom'


class NavCategories extends Component {
    render() {
        return (
            <div className=" bg-black" id="home">
                <nav className="navbar navbar-expand-lg  pt-0 pb-0" >
                    <Link className="navbar-brand ml-5"  to="/"><i className="fa fa-home " ></i>Home</Link>
                    <div className="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul className="navbar-nav  mr-3">
                            
                            <li className="nav-item " >
                                <Link className="nav-link" to="/notfound">New Arrival</Link>
                            </li>
                        
                            <li className="nav-item ">
                                <Link className="nav-link" to="/notfound">Best Sellers</Link>
                            </li>
                            <li className="nav-item ">
                                <Link className="nav-link" to="/notfound">About our bookstore</Link>
                            </li>
                        </ul>
                    </div>
                </nav>

            </div>
        )
    }
}

export default NavCategories
