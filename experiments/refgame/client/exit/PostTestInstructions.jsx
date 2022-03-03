import React from "react";

import { AlertToaster, Centered } from "meteor/empirica:core";

import {
  Button,
  Classes,
  FormGroup,
  RadioGroup,
  TextArea,
  Intent,
  Radio,
} from "@blueprintjs/core";

export default class PostTestInstructions extends React.Component {
  static stepName = 'instructions'
  handleSubmit = (event) => {
    event.preventDefault();
    this.props.onSubmit(this.state);
  };

  componentWillMount() { }

  render() {
    const { player, game } = this.props;
    const yourCommunity = game.treatment.teamColor;
    const otherCommunity = yourCommunity == 'red' ? 'blue' : 'red';


    return (
      <Centered>
        <div className="post-test">
          <h1> Thanks for participating!! </h1>
          <br />
          <p>
            You played with three different partners in the {yourCommunity} community today:
          </p>
          <span className="image">
            <img src={`experiment/communities/pre_test/${player.get("avatarName")}.png`} style={{ height: "300px" }} />
          </span>
          <h3>
            Before you go, we have a few final questions for you.
          </h3>
          <p>
            {yourCommunity == player.get("postTestGroup") ? "We're planning to follow up with another member of your own community that you haven't seen before."
              : "We're planning to follow up with a member of the other community, the " + otherCommunity + " community."
            }
          </p>
          <p>
            Later, we'll ask them to play the listener role for some additional messages.
            In the next few rounds, please write a message for us to show to them.
            We'll keep track of their responses and give you a $0.10 bonus for each correct response they make (up to $0.80 if they are all correct!)
          </p>
          <h3>
            Specifically, we'll show your messages to <b>Wepi</b>, who is {yourCommunity == player.get("postTestGroup") ? "also" : ""} a member of the {player.get("postTestGroup")} community:
          </h3>
          <span className="image">
            <img src={`experiment/communities/post_test/${player.get("avatarName")}_${player.get("postTestGroup")}.png`} style={{ height: "300px" }} />
          </span>
        </div>
        <form onSubmit={this.handleSubmit}>
          <button type="submit" className="pt-button pt-intent-primary">
            Continue
            <span className="pt-icon-standard pt-icon-key-enter pt-align-right" />
          </button>
        </form>
      </Centered>
    );
  }
}
