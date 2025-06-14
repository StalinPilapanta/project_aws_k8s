import './App.css';


function App() {
  return (
    <div className="App">
      <h1>React app deployed in Kubernetes deploy número 3 prueba online</h1>
      <div className="App-link">
          <p>Actividad grupal 3</p>
          <p>Kubernetes DevOps</p>
        </div>
       <div className="App-link">
          <p>Prueba de concepto para la practica de Contenedores</p>
        </div>
        <div>
          <img src='unir.png' alt=""></img>
        </div>
        <div className='form-box'>
          <input type="text" name="movieName" placeholder='Name'/>
          <input type="text" name="review" placeholder='Review'/>
          <button type="button" class="btn btn-primary">Submit</button>
        </div>
    </div>
  );
}

export default App;
