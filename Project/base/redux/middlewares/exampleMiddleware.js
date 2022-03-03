import axios from 'axios'
import { exampleLoadSuccess, exampleLoadError, exampleLoading } from '../actions/exampleActions'
import { API_URL } from '../../utils/conecction'

export const getExample = (id) => (dispatch) => {
  dispatch(exampleLoading())

  const options = {
    method: 'GET',
    url: `${API_URL}/example/${id}`,
    headers: { 'Content-Type': 'application/json' }
  }

  axios.request(options).then(function (response) {
    dispatch(exampleLoadSuccess(response.data))
  }).catch(function (error) {
    dispatch(exampleLoadError(error.message))
  })
}
