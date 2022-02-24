import { combineReducers } from 'redux'
import ExampleReducer from '../reducers/ExampleReducer'

const rootReducer = () => {
  return combineReducers(
    {
      example: ExampleReducer,
    }
  )
}
export default rootReducer
