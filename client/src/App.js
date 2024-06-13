import logo from './logo.svg';
import './App.css';
import AddCourse from './screens/addcourse';
import Login from './screens/Login';
import { Route, Routes } from 'react-router-dom';
import Register from './screens/Register';

function App() {
  return (
    <div className='container'>
    <Routes>
      <Route path='' element={<Login/>}/>
      <Route path="register" element={<Register/>}/>
    </Routes>
    </div>
    // <div>
    //   <AddCourse/>
    // </div>
  );
}

export default App;
