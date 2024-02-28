import './App.css';


function App() {
  return (
    <div className="App">
      <h1>React app deployed in Kubernetes deploy número 2 prueba online</h1>
      <div className="App-link">
          <p>PROTOTIPO DE PLANTILLA PARA LA AUTOMATIZACIÓN DE INFRAESTRUCTURA COMO CÓDIGO (IaC)</p>
          <p>EN UN ENTORNO KUBERNETES SIGUIENDO PRÁCTICAS DE DEVOPS</p>
        </div>
       <div className="App-link">
          <p>Esta es una prueba de concepto</p>
        </div>
        <div>
          <img src='uisrael.png' alt=""></img>
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
