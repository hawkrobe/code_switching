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
            Before you go, we have a few final questions for you.
          </p>
          <p>
            You played with three different partners in the {yourCommunity} community today:
          </p>
          <span className="image">
            <img src={`experiment/communities/pre_test/${player.get("avatarName")}.png`} style={{ height: "300px" }} />
          </span>
          <p>
            {yourCommunity == player.get("postTestGroup") ? "We're planning to follow up with members of your own community that you haven't seen before."
              : "We're planning to follow up with members of the other community, the " + otherCommunity + " community."
            }
          </p>
          <p>
            Specifically, we'll show your messages to <b>Wepi</b>, who is a member of the {player.get("postTestGroup")} community:
          </p>
          <span className="image">
            <img src={`experiment/communities/post_test/${player.get("avatarName")}_${player.get("postTestGroup")}.png`} style={{ height: "300px" }} />
          </span>
          <p>
            Later, we'll ask them to play the listener role for some additional messages.
            In the next few rounds, please write a message for us to show to them.
            We'll keep track of their responses and give you a $0.10 bonus for each correct response they make (up to $0.80 if they are all correct!)
          </p>
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
