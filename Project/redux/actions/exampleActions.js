import actionTypesExample from './actionTypes/actionTypesExample'

export const exampleLoadSuccess = (example) => {
  return {
    type: actionTypesExample.LOAD_SUCCESS_EXAMPLE,
    payload: example
  }
}

export const exampleLoadError = (error) => {
  return {
    type: actionTypesExample.LOAD_FAILURE_EXAMPLE,
    payload: error
  }
}

export const exampleLoading = () => {
  return {
    type: actionTypesExample.LOADING_EXAMPLE
  }
}
