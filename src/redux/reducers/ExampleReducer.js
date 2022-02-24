import actionTypesExample from '../actions/actionTypes/ActionTypesExample'

const initialState = {
  isLoading: false,
  example: null,
  error: null
}

const ExampleReducer = (state = initialState, { type, payload }) => {
  switch (type) {
    case actionTypesExample.LOAD_SUCCESS_EXAMPLE:
      return {
        ...state,
        isLoading: false,
        example: payload,
        error: null
      }
    case actionTypesExample.LOAD_FAILURE_EXAMPLE:
      return {
        ...state,
        isLoading: false,
        error: payload
      }
    case actionTypesExample.LOADING_EXAMPLE
      :
      return {
        ...state,
        isLoading: true,
        error: payload
      }
    default: return state
  }
}

export default ExampleReducer
