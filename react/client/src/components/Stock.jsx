const React = require('react')

let Stock = (props) =>{

  let stock = props.stockInfo

    return (

      <tr key={stock.id}>
        <td>{stock.medium}</td>
        <td>{stock.stock_level}</td>
        <td>{stock.optimum_stock}</td>
        <td>{stock.buy_price}</td>
        <td>{stock.sell_price}</td>
      </tr>

    )

}

module.exports = Stock