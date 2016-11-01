const React = require('react')
const Album = require('./Album')

let Artist = (props)=>{
  
  let albums = props.artistData.albums.map((album)=>{
    return <Album key={album.id} albumInfo={album}/>
  })

  return (
    <div className="artistContainter">
      <h3> {props.artistData.name} - {props.artistData.genre}</h3>
      <div className="artistAlbumsContainer">{albums}</div>
      <hr></hr>
    </div>
  )
}

module.exports=Artist