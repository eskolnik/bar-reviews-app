import React, { Component }  from 'react'
import Bar from '../components/Bar'

// import '../styles/BarsContainer.css'

class BarContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: {
        reviews: []
      }
    }
  }

  componentDidMount() {
    let barId = this.props.params.id;
    fetch(`/api/v1/bars/${barId}`)
    .then((response) => response.json())
    .then((json) => {
      console.log(json)
      this.setState({data: json})
    })
  }

  render() {
    return(
      <div className="bars-container">
      <h3> I am the show container! </h3>
        <Bar
          key={this.state.data.id}
          id={this.state.data.id}
          name={this.state.data.name}
          averageRating={this.state.data.average_rating}
          reviews={this.state.data.reviews}
        />
      </div>
    )
  }
}

export default BarContainer
