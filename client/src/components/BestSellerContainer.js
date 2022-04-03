import React, { Component } from 'react';
import BestSeller from './BestSeller';
import { connect } from 'react-redux';
import { fetchBestSeller } from '../actions/bookAction';

class BestSellerContainer extends Component {

    componentDidMount() {
        this.props.fetchBestSeller();
    }

    render() {
        return (
            <div className="container2">
                <div className="row">
                    {this.props.BestSeller.map((book, index) => <BestSeller key={index} book={book} />)}
                </div>
            </div>
        )
    }
}

const mapStateToProps = state => {
    return {
        BestSeller: state.book.BestSeller,
        msg: state.book.msg
    }
}

export default connect(mapStateToProps, { fetchBestSeller })(BestSellerContainer)