import { combineReducers } from 'redux'
import exampleReducer from '../reducers/exampleReducer'

const rootReducer = () => {
  return combineReducers({
      example: exampleReducer,
    })
}
export default rootReducer
