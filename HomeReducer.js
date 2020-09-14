
const initialState = {
    value: 0,
}

const counterReducer = (state = initialState,action) => {
    switch ( action.type ) {
        case 'INCREMENT': {
            console.log('Increment Reducer');
            return {
                ...state,
                value: state.value + 1,
            }
        }break;
        case 'DECREMENT' : {
            console.log('Decrement Reducer');
            return {
                ...state,
                value: state.value - 1
            }
        }break;
        default : {
            return state;
        }
    }
}

export default counterReducer;