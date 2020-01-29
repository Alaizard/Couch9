import React from 'react';
import { withRouter } from 'react-router-dom';

class Booking extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      destination: '',
      arrival_date: '',
      departure_date: '',
      number_of_travelers: 0,
      trip_description: ''

    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const booking = Object.assign({}, this.state);
    this.props.create(booking).then(this.props.closeModal);
  }


  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <main>
        <form onSubmit={this.handleSubmit} className="booking-box">
          <header className="login-header">Create a Public Trip</header>
          <br />
          <div onClick={this.props.closeModal} className="close-x">X</div>
          <div className="booking-error">{this.renderErrors()}</div>

          <div className="booking-form">
            <br />
            <label>
                <input required type="destination"
                  value={this.state.destination}
                  onChange={this.update('destination')}
                  className="booking-input-destination"
                  placeholder="Enter a location..."/>
            </label>
            <br />
            <div className="dates">
              <label>
                  <input type="date" id="start" name="booking-start"
                    max="2022-12-31" onChange={this.update('arrival_date')}/>
              </label>
              <br />
              <label>
                  <input type="date" id="end" name="booking-end"
                    min={this.state.arrival_date} max="2022-12-31"
                    onChange={this.update('departure_date')}/>
              </label>
            </div>
            <br />
            <label className="travelers">
                <select name="travel" id="day" required
                  onChange={this.update('number_of_travelers')}>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                </select>
            </label>
              <textarea rows="10" cols="50" onChange={this.update('trip_description')}>

              </textarea>
            <input className="booking-submit" type="submit" value="Create"></input>
          </div>
        </form>
      </main>
    );
  }
}

export default withRouter(Booking);