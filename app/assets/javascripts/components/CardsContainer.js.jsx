class CardsContainer extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      cards: []
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
      Card Component
      </div>
    )
  }
}
