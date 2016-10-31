Stock.delete_all()
Album.delete_all()
Artist.delete_all()

ar1 = Artist.create({name: "Amon Amarth", genre: "Melodic-Death Metal"})
ar2 = Artist.create({name: "Tool", genre: "Progressive Metal"})
ar3 = Artist.create({name: "Ensiferum", genre: "Folk Metal"})

al1 = Album.create({title: "Twilight of the Thunder God", cover: "AA-TOTTG.png", artist_id: ar1.id})
al2 = Album.create({title: "Sutur Rising", cover: "AA-SR.png", artist_id: ar1.id})
al3 = Album.create({title: "10,000 Days", cover: "T-1D.png", artist_id: ar2.id})
al4 = Album.create({title: "Victory Songs", cover: "E-VS.png", artist_id: ar3.id})

Stock.create({
  medium: "CD",
  stock_level: 17,
  stock_threshold: 10,
  buy_price: 5,
  sell_price: 8,
  album_id: al1.id
  })
Stock.create({
  medium: "Vinyl",
  stock_level: 20,
  stock_threshold: 10,
  buy_price: 8,
  sell_price: 14,
  album_id: al2.id
  })
Stock.create({
  medium: "Cassette",
  stock_level: 4,
  stock_threshold: 10,
  buy_price: 3,
  sell_price: 5,
  album_id: al3.id
  })
Stock.create({
  medium: "CD",
  stock_level: 0,
  stock_threshold: 10,
  buy_price: 6,
  sell_price: 10,
  album_id: al4.id
  })
