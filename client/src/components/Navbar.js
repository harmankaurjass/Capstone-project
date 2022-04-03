import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import * as actions from '../actions/index';
import logo from '../images/logo1.png';
import NavCategories from './NavCategories';


class Navbar extends Component {
    constructor(props) {
        super(props);
        this.state = {
            searchBook: ''
        }
        this.signOut = this.signOut.bind(this);
    }

    handleSearch = e => {
        this.setState({
            searchBook: e.target.value
        })
    }

    async signOut(res) {
        this.props.signOut();
    }
    render() {
        const userName = this.props.userProfile.name ? this.props.userProfile.name : 'Guest';
        return (
            <div>
               
                <nav className="navbar navbar-expand-lg bg-dark  pt-0 pb-0" id="navbar23">
                    <Link className="navbar-brand" to="/"><img src={logo} alt="Logo"/></Link>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="bg-dark">
                <nav className="navbar navbar-expand-lg  pt-2 pb-2" >
                
                    <div className="collapse navbar-collapse" id="navbarSupportedContent">
                      <ul className="navbar-nav  ml-3">
                         <li className="nav-item " >
                            <Link className="nav-link"  to="/">Home</Link>
                            </li>
                            <li className="nav-item " >
                                <Link className="nav-link" to="/Newarrival">New Arrival</Link>
                            </li>
                        
                            <li className="nav-item ">
                                <Link className="nav-link" to="/BestSeller">Best Sellers</Link>
                            </li>
                            <li className="nav-item ">
                                <Link className="nav-link" to="/About">About us</Link>
                            </li>
                        </ul>
                    </div>
                </nav>

            </div>
                    <div className="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul className="navbar-nav ml-auto mr-3">
                            <li className="nav-item pr-2">
                                <form className="form-inline my-2 my-lg-0 " onSubmit={this.handleSearchSubmit}>
                                    <input className="form-control mr-sm-2" onChange={this.handleSearch} type="search" placeholder="Search by title, author or ISBN" required />
                                    <Link to={'/searchbooks/' + this.state.searchBook}><button className="btn btn-outline-success my-2 my-sm-0" type="submit"><i className="fa fa-search" ></i></button></Link>
                                </form>
                            </li>
                            <li className="nav-item">
                                <Link to="/cart"><button className="btn btn- mr-sm-2 my-2 my-sm-0 " id="cart"><i className="fa fa-shopping-cart " ></i></button></Link>
                            </li>
                            {!this.props.isAuth ? <li className="nav-item ">
                                <Link to="/signup"><button className="btn btn-primary mr-sm-2 my-2 my-sm-0"><i className="fa fa-user-plus" ></i></button></Link>
                            </li> : null}
                            {this.props.isAuth ? <li className="nav-item dropdown">
                                <a className="nav-link dropdown-toggle" href="q#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hello {userName}</a>
                                <div className="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <Link to="/user_profile" className="dropdown-item">Profile</Link>
                                    <Link to="/" className="dropdown-item" onClick={this.signOut} >Sign Out</Link>
                                </div>
                            </li> : null}

                        </ul>
                    </div>
                </nav>
                <NavCategories />
                </div>
            
        )
    }
}

const mapStateToProps = state => {
    return {
        isAuth: state.auth.isAuth,
        userProfile: state.profile.userProfile
    }
}

export default connect(mapStateToProps, actions)(Navbar);