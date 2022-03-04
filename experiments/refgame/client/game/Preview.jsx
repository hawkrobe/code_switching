import React from "react";

export default class Preview extends React.Component {
    constructor(props) {
        super(props);
    }

    // handleSubmit = (event) => {
    //     player.stage.submit();
    // };

    // componentWillMount() { }
    renderPlayer(player, self = false) {
        return (
            <div className="player" key={player._id}>
                <span className="image">
                    <img src={player.avatar} />
                </span>
                {/* <span className="name" style={{ color: player.get("nameColor") }}> */}
                <span className="name" style={{ color: player.nameColor }}>
                    {player.name}
                    {self ? " (You)" : ""}
                </span>
            </div>
        );
    }

    render() {
        const { game, round, stage, player } = this.props;

        return (
            <div className="instructions">
                <h1>Your partners have been assigned!</h1>
                <p>The game will start in a few seconds.</p>
                <h3>
                    You are <strong style={{ color: player.get("nameColor")}}>
                       {player.get("name")}
                     </strong>
                </h3>
                <span className="image">
                    <img src={player.get("avatar")} style={{ height: "75px" }} />
                    <span className="name" style={{ color: player.get("nameColor") }}>
                        {player.get("name")}
                    </span>
                </span>
                <h3>
                    Here are the three players you'll be interacting with:
                </h3>
                <span className="image">
                    <img src={`experiment/communities/pre_test/${player.get("avatarName")}.png`} style={{ height: "300px" }} />
                </span>
                {/* <form onSubmit={this.handleSubmit}>
                    <button
                        type="submit"
                        className="bp3-button bp3-intent-primary"
                    // disabled={!hasNext}
                    >
                        Next
                        <span className="bp3-icon-standard bp3-icon-double-chevron-right bp3-icon-align-right" />
                    </button></form> */}
            </div>
        );
    }
}
