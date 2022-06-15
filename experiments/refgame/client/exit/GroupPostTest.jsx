import React from "react";
import TangramExit from "./TangramExit";
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

class GroupPostTest extends React.Component {

  handleChange = (event) => {
    const el = event.currentTarget;
    this.setState({ 'text': el.value });
  };

  handleSubmit = (event) => {
    event.preventDefault();
    if (this.state.text === "") {
      AlertToaster.show({
        message: "Sorry, you have not completed the question above. Please answer the question before submitting!"
      });
    } else if (this.state.loadingNextRound) {
      AlertToaster.show({
        message: "Sorry, you have already submitted. Please wait for the next question to load."
      });
    } else {
      this.state.loadingNextRound = true;
      document.getElementById('submit-button').disabled = true;
      Meteor.setTimeout(() => this.props.onSubmit(this.state), 1000);
    }
  };



  componentWillMount() { }


  render() {
    const { player, game } = this.props;
    // player.set('clicked', false)
    // player.set('role', 'speaker')

    const tangramsToRender = this.state.context.map((tangram, i) => (
      <TangramExit
        key={tangram}
        tangram={tangram}
        tangram_num={i}
        // game={game}
        player={player}
        target={this.state.tangram}
      />
    ))

    return this.state.loadingNextRound ? (
      <Centered>
        <div className="post-test"> <h3> Got it! Loading next question... </h3></div>
      </Centered>
    ) : (
      <Centered>
        <div className="post-test">
          <h1>
            You are transmitting a message to <b>Wepi</b>, who is a member of {player.get("postTestGroup") == game.treatment.teamColor ? "your own community, " : " the other community, "} the <b style={{ color: player.get("postTestGroup") }}>{player.get("postTestGroup")} community</b>.
          </h1>
          <span className="image">
            <img src={`experiment/communities/post_test/${player.get("avatarName")}_${player.get("postTestGroup")}.png`} style={{ height: "300px" }} />
          </span>
          <hr></hr>
          <div>
            <div className="round">
              <div className="social-interactions">
                <div className="status" style={{ height: 130}}>
                  <div className="players bp3-card">
                    <h4 className="bp3-heading">
                      Describe the target object for <b>Wepi</b>. You'll receive a $0.10 bonus if they can choose it correctly based on your message.
                    </h4>
                  </div>
                </div>

                <div className="chat bp3-card">
                  <div className="messages" style={{ height: 420 }}>
                    <div className="empty">No messages yet...</div>
                  </div>
                  <form onSubmit={this.handleSubmit}>
                    <div className="bp3-control-group">
                      <input
                        id={this.state.id}
                        name={this.state.id}
                        type="text"
                        intent={Intent.PRIMARY}
                        onChange={this.handleChange}
                        className="bp3-input bp3-fill"
                        placeholder="Enter chat message"
                        autoComplete="off"
                      />
                      <button type="submit" id='submit-button' className="bp3-button bp3-intent-primary">
                        Send
                      </button>
                    </div>
                  </form>
                </div>
              </div>
              <div className="task">
                <div className="board">
                  <h1 className="roleIndicator"> You are the speaker.</h1>
                  <div className="all-tangrams">
                    <div className="tangrams">
                      {tangramsToRender}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </Centered>
    );
  }
}

export class BlueA extends GroupPostTest {
  static stepName = 'blueA'
  constructor(props) {
    console.log('blue a props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_A.png",
      context: ["/experiment/tangram_A.png", "/experiment/tangram_B.png",
        "/experiment/tangram_C.png", "/experiment/tangram_D.png"],
      recipientGroup: 'blue',
      ownGroup: props.game.treatment.teamColor,
      id: 'blueA',
      text: ""
    };
  }
}

export class BlueB extends GroupPostTest {
  static stepName = 'blueB'
  constructor(props) {
    console.log('blue b props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_B.png",
      context: ["/experiment/tangram_A.png", "/experiment/tangram_B.png",
        "/experiment/tangram_C.png", "/experiment/tangram_D.png"],
      recipientGroup: 'blue',
      ownGroup: props.game.treatment.teamColor,
      id: 'blueB',
      text: ""
    };
  }
}

export class BlueC extends GroupPostTest {
  static stepName = 'blueC'
  constructor(props) {
    console.log('blue c props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_C.png",
      context: ["/experiment/tangram_A.png", "/experiment/tangram_B.png",
        "/experiment/tangram_C.png", "/experiment/tangram_D.png"],
      recipientGroup: 'blue',
      ownGroup: props.game.treatment.teamColor,
      id: 'blueC',
      text: ""
    };
  }
}

export class BlueD extends GroupPostTest {
  static stepName = 'blueD'
  constructor(props) {
    console.log('blue d props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_D.png",
      context: ["/experiment/tangram_A.png", "/experiment/tangram_B.png",
        "/experiment/tangram_C.png", "/experiment/tangram_D.png"],
      recipientGroup: 'blue',
      ownGroup: props.game.treatment.teamColor,
      id: 'blueD',
      text: ""
    };
  }
}


export class BlueE extends GroupPostTest {
  static stepName = 'blueE'
  constructor(props) {
    console.log('blue e props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_E.png",
      context: ["/experiment/tangram_E.png", "/experiment/tangram_F.png",
        "/experiment/tangram_G.png", "/experiment/tangram_H.png"],
      recipientGroup: 'blue',
      ownGroup: props.game.treatment.teamColor,
      id: 'blueE',
      text: ""
    };
  }
}

export class BlueF extends GroupPostTest {
  static stepName = 'blueF'
  constructor(props) {
    console.log('blue f props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_F.png",
      context: ["/experiment/tangram_E.png", "/experiment/tangram_F.png",
        "/experiment/tangram_G.png", "/experiment/tangram_H.png"],
      recipientGroup: 'blue',
      ownGroup: props.game.treatment.teamColor,
      id: 'blueF',
      text: ""
    };
  }
}

export class BlueG extends GroupPostTest {
  static stepName = 'blueG'
  constructor(props) {
    console.log('blue g props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_G.png",
      context: ["/experiment/tangram_E.png", "/experiment/tangram_F.png",
        "/experiment/tangram_G.png", "/experiment/tangram_H.png"],
      recipientGroup: 'blue',
      ownGroup: props.game.treatment.teamColor,
      id: 'blueG',
      text: ""
    };
  }
}

export class BlueH extends GroupPostTest {
  static stepName = 'blueH'
  constructor(props) {
    console.log('blue h props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_H.png",
      context: ["/experiment/tangram_E.png", "/experiment/tangram_F.png",
        "/experiment/tangram_G.png", "/experiment/tangram_H.png"],
      recipientGroup: 'blue',
      ownGroup: props.game.treatment.teamColor,
      id: 'blueH',
      text: ""
    };
  }
}


export class RedA extends GroupPostTest {
  static stepName = 'RedA'
  constructor(props) {
    console.log('red a props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_A.png",
      context: ["/experiment/tangram_A.png", "/experiment/tangram_B.png",
        "/experiment/tangram_C.png", "/experiment/tangram_D.png"],
      recipientGroup: 'red',
      ownGroup: props.game.treatment.teamColor,
      id: 'redA',
      text: ""
    };
  }
}

export class RedB extends GroupPostTest {
  static stepName = 'RedB'
  constructor(props) {
    console.log('red b props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_B.png",
      context: ["/experiment/tangram_A.png", "/experiment/tangram_B.png",
        "/experiment/tangram_C.png", "/experiment/tangram_D.png"],
      recipientGroup: 'red',
      ownGroup: props.game.treatment.teamColor,
      id: 'redB',
      text: ""
    };
  }
}

export class RedC extends GroupPostTest {
  static stepName = 'RedC'
  constructor(props) {
    console.log('red c props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_C.png",
      context: ["/experiment/tangram_A.png", "/experiment/tangram_B.png",
        "/experiment/tangram_C.png", "/experiment/tangram_D.png"],
      recipientGroup: 'red',
      ownGroup: props.game.treatment.teamColor,
      id: 'redC',
      text: ""
    };
  }
}

export class RedD extends GroupPostTest {
  static stepName = 'RedD'
  constructor(props) {
    console.log('red d props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_D.png",
      context: ["/experiment/tangram_A.png", "/experiment/tangram_B.png",
        "/experiment/tangram_C.png", "/experiment/tangram_D.png"],
      recipientGroup: 'red',
      ownGroup: props.game.treatment.teamColor,
      id: 'redD',
      text: ""
    };
  }
}
export class RedE extends GroupPostTest {
  static stepName = 'RedE'
  constructor(props) {
    console.log('red e props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_E.png",
      context: ["/experiment/tangram_E.png", "/experiment/tangram_F.png",
        "/experiment/tangram_G.png", "/experiment/tangram_H.png"],
      recipientGroup: 'red',
      ownGroup: props.game.treatment.teamColor,
      id: 'redE',
      text: ""
    };
  }
}

export class RedF extends GroupPostTest {
  static stepName = 'RedF'
  constructor(props) {
    console.log('red f props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_F.png",
      context: ["/experiment/tangram_E.png", "/experiment/tangram_F.png",
        "/experiment/tangram_G.png", "/experiment/tangram_H.png"],
      recipientGroup: 'red',
      ownGroup: props.game.treatment.teamColor,
      id: 'redF',
      text: ""
    };
  }
}

export class RedG extends GroupPostTest {
  static stepName = 'RedG'
  constructor(props) {
    console.log('red g props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_G.png",
      context: ["/experiment/tangram_E.png", "/experiment/tangram_F.png",
        "/experiment/tangram_G.png", "/experiment/tangram_H.png"],
      recipientGroup: 'red',
      ownGroup: props.game.treatment.teamColor,
      id: 'redG',
      text: ""
    };
  }
}

export class RedH extends GroupPostTest {
  static stepName = 'RedH'
  constructor(props) {
    console.log('red h props', props)
    super(props);
    this.state = {
      tangram: "/experiment/tangram_H.png",
      context: ["/experiment/tangram_E.png", "/experiment/tangram_F.png",
        "/experiment/tangram_G.png", "/experiment/tangram_H.png"],
      recipientGroup: 'red',
      ownGroup: props.game.treatment.teamColor,
      id: 'redH',
      text: ""
    };
  }
}
