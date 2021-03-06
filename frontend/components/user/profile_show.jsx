import React from 'react';
import Tabs from './tabs/tabs';
import { Link } from 'react-router-dom';

class ProfileShow extends React.Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    this.props.fetchBookings(this.props.currentUser.id)
    this.props.requestUser(this.props.userId)
    .then(user => this.setState({
      user
    }));
  }
  render() {
    let review;
    if (!this.state) return null;
    if (this.props.match.params.user_id != 1) {
      const user = this.state.user
      review = 
        <Link to={{
          pathname: '/api/reviews/new',
          state: {
            user
          }
        }} 
        className="review-button">Write A Review</Link >
    } else {
      review = ""
    }
    
    const user = this.state.user;
    return (
        <main>
        <main className="profile">
          <div className="left-column-wrapper">
            <div className="left-column">
              <section className="user">
                <img src={window.default} />
                  <h2 className="user-name">{user.fname} {user.lname}</h2>

                <div className="location">
                  <Link to={`/api/locations/show/${user.location.id}`}>{user.location.name}</Link>
                </div>
              </section>
            </div>
          </div>
          <div className="center-column-wrapper">
            <div className="center-column">
              <section className="host-availability">
                <div className="availability-header">
                  <div className="availability">Host availability</div>
                  {review}
                </div>
              </section>
              <section className="profile-nav">
                <header className="profile-header">
                  <Tabs user={user}/>
                </header>
              </section>
            </div>
          </div>
          <div className="right-column-wrapper">
            <div className="right-column"></div>
          </div>
        </main>
      </main>
      )



};
}
export default (ProfileShow);