const React = require('react')

let Album = (props)=>{


  let stocks = props.albumInfo.stock.map((stock)=>{
    return (
      <div key={stock.id}>
        <p>{stock.medium} -- Buy : {stock.buy_price} / Sell : {stock.sell_price}</p>

      </div>
      )
  })

  return (
    <div>
      <h4>{props.albumInfo.title}</h4>
      {stocks}
    </div>
    )
}

module.exports=Album