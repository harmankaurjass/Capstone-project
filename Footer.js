import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
import ReactDOM from 'react-dom';

class Footer extends Component {
    constructor(props) {
        super(props)

        this.state = {
            email: ''
        }
    }

    handleNewsletter = e => {
        this.setState({
            email: e.target.value
        })
    }

    handleNewsletterSubmit = e => {
        e.preventDefault();
        axios.post('/users/newsletter', {
            "email": this.state.email
        })
            .then((response) => {
                ReactDOM.findDOMNode(this.refs.newsletter).style.display = 'block';
            })
            .catch(err => console.log('error is ', err))
    }

    render() {
        return (
            <div style={{ background: 'black' }} className="pt-4 pb-4 ">
                <div className="footer-top-area">
                    <div className="container ">
                        <div className="row">
                            <div className="col-md-4 col-sm-12">
                                <div className="footer-left">
                                    <Link className="navbar-brand" to="/"><i className="fa fa-book text-warning "></i> <span style={{ color: 'orange' }}>Book Store</span></Link>
                                    <p style={footerLink}>The more that you read, the more things you will know. The more that you learn, the more places you'll go</p>
                                    <ul className="navbar-nav">
                                        <li style={footerLink}><button className="btn btn-small btn-success mr-sm-2 my-sm-2  my-2 mr-1 disabled"><i className="fa fa-map-marker" ></i></button>33 weber st,Kitchener</li>
                                        <li style={footerLink}><button className="btn btn-small btn-primary mr-sm-2 my-sm-2 my-2 mr-1 disabled"><i className="fa fa-phone" ></i></button>555-4437-3456</li>
                                        <li style={footerLink}><button className="btn btn-small btn-warning mr-sm-2 my-sm-2 my-2 mr-1 disabled"><i className="fa fa-envelope" ></i></button>info@bookstore.com</li>
                                    </ul>
                                </div>
                            </div>
                            <div className="col-md-2 col-sm-12">
                                <div className="single-footer">
                                    <h4 style={footerTitle}>Information</h4>
                                    <ul className="navbar-nav">
                                        <li ><Link style={footerLink} to="/about" >About Us</Link></li>
                                        <li ><Link style={footerLink} to="/notfound" >Delivery Information</Link></li>
                                        <li ><Link style={footerLink} to="/notfound" >Privacy & Policy</Link></li>
                                        <li ><Link style={footerLink} to="/notfound" >Terms & Conditions</Link></li>
                                        
                                    </ul>
                                </div>
                            </div>
                            <div className="col-md-2 col-sm-12">
                                <div className="single-footer">
                                    <h4 style={footerTitle}>My Account</h4>
                                    <ul className="navbar-nav">
                                        <li ><Link style={footerLink} to="/user_profile" >My Account</Link></li>
                                        <li ><Link style={footerLink} to="/signup" >Login</Link></li>
                                        <li ><Link style={footerLink} to="/cart" >My Cart</Link></li>
                                        <li ><Link style={footerLink} to="/notfound" >Orders & Returns</Link></li>
                                        <li ><Link style={footerLink} to="/cart" >Checkout</Link></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div className="col-md-4 col-sm-12">
                                <div className="single-footer footer-newsletter">
                                    <h4 style={footerTitle}>Our Newsletter</h4>
                                    <p style={{ color: '#fff' }}>Subscribe to our weekly Newsletter and get to know about latest books</p>
                                    <form className="form-inline my-2 my-lg-0" onSubmit={this.handleNewsletterSubmit}>
                                        <input className="form-control mr-sm-2 my-sm-2" onChange={this.handleNewsletter} type="email" placeholder="info@bookstore.com" required />
                                        <div className="row mt-2">
                                            <button className="btn btn-success btn-small ml-3 " type="submit">SUBSCRIBE</button>
                                            <button ref="newsletter" className="btn btn-success btn-small ml-3 disabled" style={newsletter}><i className="fa fa-check"></i></button>
                                        </div>
                                    </form>
                                    <ul className="navbar-nav">
                                        <li>
                                            <a href="https://www.facebook.com"><button className="btn btn-small btn-primary mr-sm-2 my-sm-2 my-2 mr-1  "><i className="fa fa-facebook"></i></button></a>
                                    
                                            <a href="https://www.instagram.com"><button className="btn btn-small btn-danger mr-sm-2 my-sm-2 my-2 mr-1 "><i className="fa fa-instagram"></i></button></a>
                                       
                                            <a href="https://www.twitter.com"><button className="btn btn-small btn-primary mr-sm-2 my-sm-2 my-2 mr-1 "><i className="fa fa-twitter"></i></button></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="footer-bottom">
                    <div className="container">
                        <div className="row">
                            <div className="col-md-8">
                                <div className="footer-bottom-left pull-left">
                                    <p style={{ color: '#fff'}}>Copyright &copy; 2022 <span><a href="https://www.github.com/harmankaurjass/Capstone-project/tree/main" target="_blank" rel="noopener noreferrer" style={{ textDecoration: 'none' }}>BookStore</a></span>. All Right Reserved.</p>
                                </div>
                            </div>
                            <div className="col-md-4">
                                <div className="footer-bottom-right pull-right">
                                    <p style={{ color: '#fff' }}>Canada</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div >
        )
    }
}

const footerTitle = {
    color: "orange"

}

const footerLink = {
    color: "#fff",
    textDecoration: 'none'
}

const newsletter = {
    display: 'none'
}

export default Footer
