import React, { Component } from 'react';
import NewArrival from './NewArrival';
import { connect } from 'react-redux';
import { fetchnewarrival } from '../actions/bookAction';

class NewArrivalContainer extends Component {

    componentDidMount() {
        this.props.fetchnewarrival();
    }

    render() {
        return (
            <div className="container1">
                <div className="row">
                    {this.props.books.map((book, index) => <NewArrival key={index} book={book} />)}
                </div>
            </div>
        )
    }
}

const mapStateToProps = state => {
    return {
        books: state.book.books,
        msg: state.book.msg
    }
}

export default connect(mapStateToProps, { fetchnewarrival })(NewArrivalContainer)