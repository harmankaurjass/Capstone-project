import { BEST_SELLER, FETCH_BOOKS, FETCH_BOOK_INFO, FETCH_CATEGORIES, NEW_ARRIVALS } from '../actions/types';


const DEFAULT_STATE = {
    books: [],
    bookInfo: {},
    loadBookSpin: true,
    newArrivals:[],
    BestSeller:[],
    categories: []
}

export default (state = DEFAULT_STATE, action) => {
    switch (action.type) {
        case FETCH_BOOKS:
            return {
                ...state,
                books: action.payload
            }
        case FETCH_BOOK_INFO:
            return {
                ...state,
                bookInfo: action.payload[0],
                loadBookSpin: false
            }
        case FETCH_CATEGORIES:
            return {
                ...state,
                categories: action.payload
            }
        case NEW_ARRIVALS:
            return {
                 ...state,
                 newArrivals: action.payload
                }
         case BEST_SELLER:
             return {
                ...state,
                BestSeller: action.payload
                }
        default:
            return {
                ...state
            }
    }
}