class CardsContainer extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      cards: []
    }
  }

  componentDidMount(){
    // make this a post route!!

    fetch('/api/deck/create.json')
    .then((response) => {
      debugger;
      return response.json()
    })
    .then((data) => {this.setState({ cards: data }) });
  }

  render(){
    return(
      <div>
        Card Component
      </div>
    )
}
}
