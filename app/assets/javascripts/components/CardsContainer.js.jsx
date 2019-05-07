class CardsContainer extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      cards: [],
      count: 0
    }

     this.handleClick = this.handleClick.bind(this)
     this.handleButton = this.handleButton.bind(this)

  }

  handleClick(event) {
    console.log("clicked it")
  }

  handleButton(event) {
    console.log("pushed a button")
  }

  renderDrawButton() {
    if (this.state.count < 5) {
      <button onSubmit={this.handleButton} >Draw Card</button>
    }
  }

  componentDidMount(){

// creates a new deck when container is loaded
    let data = {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    }

    fetch('/api/deck', data)
    .then((response) => { return response.json()})
    .then((data) => {this.setState({ cards: data })});
  }

  render(){
    return(
      <div>
      <Card cards={this.state.cards} handleClick={this.handleClick} />
      <Card cards={this.state.cards} handleClick={this.handleClick} />
      <Card cards={this.state.cards} handleClick={this.handleClick} />
      <Card cards={this.state.cards} handleClick={this.handleClick} />
      <Card cards={this.state.cards} handleClick={this.handleClick} />
      </div>
    )
  }
}
