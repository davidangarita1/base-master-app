import { BrowserRouter, Routes, Route } from 'react-router-dom'
import PublicLayout from './layouts/PublicLayout'
import PrivateLayout from './layouts/PrivateLayout'
import ExamplePagePublic from './pages/public/ExamplePagePublic'
import ExamplePagePrivate from './pages/private/ExamplePagePrivate'
import NotFound from './pages/shared/NotFound'

function App () {
  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<PublicLayout />}>
            <Route path='' element={<ExamplePagePublic />} />
            <Route path='*' element={<NotFound />} />
          </Route>
          <Route path='/private' element={<PrivateLayout />}>
            <Route path='inicio' element={<ExamplePagePrivate />} />
            <Route path='*' element={<NotFound />} />
          </Route>
        </Routes>
      </BrowserRouter>

    </div>
  )
}

export default App
