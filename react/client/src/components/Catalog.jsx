const React = require('react');
const Artist = require ('./Artist')

let Catalog = React.createClass({
  getInitialState: function(){
    return {}
  },
  render: function(){
    let artists = this.props.catalogData.map((artistObject)=>{
      return <Artist key={artistObject.id} artistData={artistObject}/>
    })

    return (
      <div>
        {artists}
      </div>
    )
  }

})

module.exports = Catalog