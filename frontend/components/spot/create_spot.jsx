import React from 'react';

class CreateSpot extends React.Component {
  constructor(props) {
    super(props);
    const spot = this.props.currentUser.spot || {};
    this.state = {
      host_id: this.props.currentUser.id,
      location_id: spot.location_id || null,
      max_guests: spot.max_guests || 0,
      last_minute_requests: spot.last_minute_requests || false,
      preferred_gender: spot.preferred_gender || "Any",
      has_children: spot.has_children || false,
      has_pets: spot.has_pets || false,
      smoking_at_home: spot.smoking_at_home || false,
      sleeping_arrangements: spot.sleeping_arrangements || "",
      description_of_sleeping_arrangements: spot.description_of_sleeping_arrangements || "",
      roommate_situation: spot.roommate_situation || "",
      pet_friendly: spot.pet_friendly || false,
      kid_friendly: spot.kid_friendly || false,
      smoking_allowed: spot.smoking_allowed || false,
      wheelchair_accessible: spot.wheelchair_accessible || false,
      public_transportation: spot.public_transportation || "",
      what_i_can_share_with_guests: spot.what_i_can_share_with_guests || "",
      additional_information: spot.additional_information || "",
      sun: spot.sun || false,
      mon: spot.mon || false,
      tue: spot.tue || false,
      wed: spot.wed || false,
      thu: spot.thu || false,
      fri: spot.fri || false,
      sat: spot.sat || false,
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
    this.checkboxUpdate = this.checkboxUpdate.bind(this);
    this.renderErrors = this.renderErrors.bind(this);
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

  componentWillUnmount() {
    this.props.clearErrors();
    $('#error').addClass('hidden')
  }

  handleSubmit(e) {
    e.preventDefault();
    const createForm = Object.assign({}, this.state);
    this.props.processForm(createForm)
    .then(() => this.props.history.push(`/api/users`))
    this.setState(this.state)
  };

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  checkboxUpdate(field) {
    return e => {
      if (this.state[field] === false) {
        this.setState({
          [field]: true
        });
    } else {
        this.setState({
          [field]: false
        })
      }
    }
  }

  
  render() {
    const currentUser = this.props.currentUser
    return(
      <main>
        <article className="spot-page">
          <form className="create-spot-form" onSubmit={this.handleSubmit}>

          
        <div className="spot-left-column">
          <div className="inside-left-column">
            <section className="spot-user">
              <img src={window.profpic} />
            </section>
         
            <div className="left-overview">
              <h2>OVERVIEW</h2>
              <ul>
                <li>Languages</li>
                <li>{currentUser.age} {currentUser.gender}</li>
                <li>{currentUser.occupation}</li>
                <li>{currentUser.education}</li>
              </ul>
            </div>
          </div>
        </div>
        <div className="home-container">
          <header className="main-header">
                <h1>{currentUser.fname} {currentUser.lname}</h1>
                <h2>{currentUser.city}</h2>
          </header>
          <main className="main-body">
          <header className="home-header">
            {this.renderErrors}
            <h2>My Home</h2>
            <div className="header-buttons">
              <input type="submit" value="Save"/>
              <a href="/">Cancel</a>
            </div>
          </header>
          <section className="home-preferences">
            <h3 className="section-h3">My Preferences</h3>
            <dl className="available-nights">
              <dt className="available-title">Available Nights to Host</dt>
              <dd className="available-nights-descriptions">
              <ul className="days">
                <li>
                  <label htmlFor="sun">Sun</label>
                  <input type="checkbox" name="sun" id="sun" className="available_nights"
                    className="save-cb-state"
                    value="sun" onChange={this.checkboxUpdate("sun")} />
                </li>
                <li>
                  <label htmlFor="mon">Mon</label>
                  <input type="checkbox" name="mon" id="mon" className="available_nights"
                    className="save-cb-state"
                    value="mon" onChange={this.checkboxUpdate("mon")} />
                </li>
                <li>
                  <label htmlFor="tue">Tue</label>
                  <input type="checkbox" name="tue" id="tue" className="available_nights"
                    className="save-cb-state"
                    value="tue" onChange={this.checkboxUpdate("tue")} />
                </li>
                <li>
                  <label htmlFor="wed">Wed</label>
                  <input type="checkbox" name="wed" id="wed" className="available_nights"
                    className="save-cb-state"
                    value="wed" onChange={this.checkboxUpdate("wed")} />
                </li>
                <li>
                  <label htmlFor="thu">Thu</label>
                  <input type="checkbox" name="thu" id="thu" className="available_nights"
                    className="save-cb-state"
                    value="thu" onChange={this.checkboxUpdate("thu")} />
                </li>
                <li>
                  <label htmlFor="fri">Fri</label>
                  <input type="checkbox" name="fri" id="fri" className="available_nights"
                    className="save-cb-state"
                    value="fri" onChange={this.checkboxUpdate("fri")} />
                </li>
                <li>
                  <label htmlFor="sat">Sat</label>
                  <input type="checkbox" name="sat" id="sat" className="available_nights"
                    className="save-cb-state"
                    value="sat" onChange={this.checkboxUpdate("sat")} />
                </li>
              </ul>
              </dd>
            </dl>
            <div className="max-guests">
              <h3 className="dt">Maximum Number of Guests</h3>
              <select value ={this.state.max_guests} 
                onChange={this.update('max_guests')}
                name="guests" id="guests">
                <option value="any" defaultValue>Any</option>
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
            </div>

            <dl className="request-preferences">
              <dt className="request-title">Request Preferences</dt>
              <dd className="request-descriptions">
                <li>
                  <label htmlFor="last">Last-Minute Requests Okay</label>
                        <input type="radio" name="last" id="last" className="last_minute_requests"
                          onChange={this.update("last_minute_requests")} value={this.state.last_minute_requests}/>      
                </li>
              </dd>
            </dl>

            <div className="gender-preference">
              <h3 className="dt">Preferred Gender to Host</h3>
                <select value={this.state.preferred_gender}
                  onChange={this.update('preferred_gender')}
                  name="gender-pref" id="gender-pref">
                  <option value="any">Any</option>
                  <option value="male">Male</option>
                  <option value="Female">Female</option>
                </select>
            </div>

            <dl className="cps">
              <dt className="cps-title">Children, Pets, Smoking</dt>
              <dd className="cps-descriptions">
                <li>
                  <label htmlFor="kid">Kid Friendly</label>
                  <input type="checkbox" name="kid" id="kid"
                    className="kid_friendly" className="save-cb-state"
                  onChange={this.checkboxUpdate("kid_friendly")} value={this.state.kid_friendly} />
                </li>
                <li>
                  <label htmlFor="pet">Pet Friendly</label>
                  <input type="checkbox" name="pet" id="pet"
                    className="pet_friendly" className="save-cb-state"
                  onChange={this.checkboxUpdate("pet_friendly")} value={this.state.pet_friendly} />
                </li>
                <li>
                  <label htmlFor="smoking">Smoking is Allowed</label>
                  <input type="checkbox" name="smoking" id="smoking"
                    className="smoking_allowed" className="save-cb-state"
                  onChange={this.checkboxUpdate("smoking_allowed")} value={this.state.smoking_allowed} />
                </li>
              </dd>
            </dl>

          </section>
          <section className="my-home">
            <h3 className="section-h3">My Home</h3>

            <div className="sleeping-arrangements">
              <h3 className="dt">Sleeping Arrangements</h3>
                <select value={this.state.sleeping_arrangements}
                  onChange={this.update('sleeping_arrangements')}
                  name="sleep" id="sleep">
                  <option value="na"></option>
                  <option value="shared-bed">Shared Bed</option>
                  <option value="shared-room">Shared Room</option>
                  <option value="public-room">Public Room (Eg: Living Room)</option>
                  <option value="private-room">Private Room</option>
                </select>
            </div>

            <div className="description-sleep">
              <h3 className="dt">Description of Sleeping Arrangement</h3>
                <textarea name="description-sleep" id="" cols="40" rows="8"
                  onChange={this.update("description_of_sleeping_arrangements")}>
                </textarea>
            </div>

            <div className="roommate-situation">
              <h3 className="dt">Roommate Situation</h3>
              <textarea name="roommate-situation" id="" cols="40" rows="8"
                onChange={this.update("roommate_situation")}>
              </textarea>
            </div>

            <dl className="misc">
              <dt className="misc-title">Miscellaneous</dt>
              <dd className="misc-descriptions">
                <li>
                  <label htmlFor="have-pet">I Have a Pet</label>
                  <input type="checkbox" name="have-pet" id="have-pet" 
                      className="has_pets" className="save-cb-state"
                      onChange={this.checkboxUpdate("has_pets")}  />
                </li>
                <li>
                  <label htmlFor="have-kids">Kids at Home</label>
                  <input type="checkbox" name="have-kids" id="have-kids" 
                      className="has_kids" className="save-cb-state"
                      onChange={this.checkboxUpdate("has_children")} />
                </li>
                <li>
                  <label htmlFor="home-smoking">Smoking at Home</label>
                  <input type="checkbox" name="home-smoking" id="home-smoking" 
                      className="smoking_at_home" className="save-cb-state"
                      onChange={this.checkboxUpdate("smoking_at_home")}  />
                </li>
                <li>
                  <label htmlFor="wheelchair">Wheelchair Accessible</label>
                  <input type="checkbox" name="wheelchair" id="wheelchair" 
                      className="wheelchair_accessible" className="save-cb-state"
                      onChange={this.checkboxUpdate("wheelchair_accessible")}  />
                </li>
              </dd>
            </dl>

            <div className="public-transportation">
              <h3 className="dt">Public Transportation</h3>
              <textarea name="public-transportation" id="" cols="40" rows="8"
                onChange={this.update("public_transportation")}>
              </textarea>
            </div>

            <div className="shared">
              <h3 className="dt">What I Can Share With Guests</h3>
              <textarea name="shared" id="" cols="40" rows="8"
                onChange={this.update("what_i_can_share_with_guests")}>
              </textarea>
            </div>

            <div className="additional">
              <h3 className="dt">Additional Information</h3>
              <textarea name="additional" id="" cols="40" rows="8"
                onChange={this.update("additional_information")}>
              </textarea>
            </div>

          </section>
          <div className="footer-buttons">
            <input type="submit" value="Save" />
            <a href="/">Cancel</a>
          </div>
        </main>
        </div>
          </form>
        </article>
      </main >
    )
  }
}

export default CreateSpot;
