import {createStore} from 'redux';
import reducer from '../frontend/reducer.js'

const Store = createStore(reducer);

export default Store;