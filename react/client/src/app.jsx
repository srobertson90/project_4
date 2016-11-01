const React = require('react')
const ReactDom = require('react-dom')

const apiRequester = require('./models/apiRequester')

const Catalog = require('./components/Catalog')
const Stock = require('./components/Stock')

window.onload = ()=>{
  console.log("window loaded")

  const renderCatalog = function(progressEvent){
    let catalogData = JSON.parse(progressEvent.target.response);
    ReactDom.render(
      <Catalog catalogData={catalogData}/>,
      document.getElementById("body-container"))
  }

  const catalogData = apiRequester.get("http://localhost:3000/api/artists", renderCatalog)

}