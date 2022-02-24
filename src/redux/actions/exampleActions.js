import ActionTypesExample from './actionTypes/ActionTypesExample'

export const exampleLoadSuccess = (example) => {
  return {
    type: ActionTypesExample.LOAD_SUCCESS_EXAMPLE,
    payload: example
  }
}

export const exampleLoadError = (error) => {
  return {
    type: ActionTypesExample.LOAD_FAILURE_EXAMPLE,
    payload: error
  }
}

export const exampleLoading = () => {
  return {
    type: ActionTypesExample.LOADING_EXAMPLE
  }
}
