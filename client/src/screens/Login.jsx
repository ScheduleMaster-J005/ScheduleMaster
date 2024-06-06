
import "../screens/Login.css";
function Login() {
  return (
    <div>
      <h2 className="page-header mb-5">Login</h2>
      <div className="row">
        <div className="col"></div>
        <div className="col">
          <div className="form">
            <div className="mb-3 form-group">
              <label htmlFor="" className="me-3 form-label">
                Username
              </label>
              <input type="text" className="form-control" />
            </div> 
            <div className="mb-3 form-group">
              <label htmlFor="" className="me-3 form-label">
                Password
              </label>
              <input type="text" className="form-control" />
            </div>
            <div className='mb-3'>
            <div>
                Don't have account ?
              </div>
              <button className='btn btn-success mt-2'>
                Login
              </button>
            </div>
          </div>
        </div>
        <div className="col"></div>
      </div>
    </div>
  );
}
export default Login;
