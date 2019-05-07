class Card extends React.Component {

constructor(props) {
  super(props)
  this.state = {
    cardDrawn: false
  }
}




render(){

  const card = {
    width: "300px",
    margin: "30px auto",
    backgroundColor: "#44014C",
    minHeight: "200px",
    boxSizing: "border-box"
  }

  return(
    <div style={card}>
      i'm a card!
    </div>
  )
}

}
