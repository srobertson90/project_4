const React = require('react')
const Stock = require('./Stock')

let Album = (props)=>{

  let stocks = props.albumInfo.stock.map((stock)=>{
    return <Stock key={stock.id} stockInfo={stock}/>
  })

  return (
    <div className="albumContainer">

      <img className="albumCover" src={props.albumInfo.cover}/>

      <div className="albumInfo">
      <h4>{props.albumInfo.title}</h4>

      <table>
        <tbody>

          <tr>
            <th>Format</th>
            <th>Stock</th> 
            <th>Optimal</th>
            <th>Buy</th>
            <th>Sell</th>
          </tr>

          {stocks}

        </tbody>
      </table>
      </div>

    </div>
  )
}

module.exports = Album