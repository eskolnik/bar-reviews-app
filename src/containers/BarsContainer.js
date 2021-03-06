import React, { Component }  from 'react';
import BarTile from '../components/BarTile';

class BarsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      bars: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/bars')
    .then((response) => response.json())
    .then((json) => {
      this.setState({bars: json})
    })
  }

  render() {
    let bars = this.state.bars.map(bar => {
      return(
        <BarTile
          key={bar.id}
          id={bar.id}
          name={bar.name}
          address={bar.address}
          hours_of_operation={bar.hours_of_operation}
          cover_charge={bar.cover_charge}
        />
      )
    })

    return(
      <div className="bars-container">
        <h2> I am the Bars Index Container </h2>
        {bars}
        {this.props.children}
      </div>
    )
  }
}

export default BarsContainer;
