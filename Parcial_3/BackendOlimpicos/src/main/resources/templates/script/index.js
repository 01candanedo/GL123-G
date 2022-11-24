let datos = [];



function ObtenerDatos(){

    fetch("http://localhost:8080/juegos/all").

    then(resultado => {

        resultado.json().then(json => {

            datos = json;

            console.log(datos);

            MapearDatos();

        })

    });

}



function MapearDatos(){

    //let contenido = document.getElementById('contenido');

    let contenedor = document.getElementById('contenedor');

    for(let i=0; i<datos.length; i++){

        contenedor.innerHTML += MapearPlantilla(datos[i]);

    }

}

function MapearPlantilla(datos){
    return `
    <div class="game-card">
        <div class="game-image">
            <img src="${datos.foto}" class="game-thumb" alt="A Plague Tale: Requiem Poster">
            <button class="card-btn">a la lista de deseos</button>
        </div>
        <div class="game-info">
            <h2 class="game-name">${datos.titulo}</h2>
            <p class="game-availability">${datos.descripcion}</p>
            <span class="price">${datos.precio}</span>
        </div>
    </div>
`


}