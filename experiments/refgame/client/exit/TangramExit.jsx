import React from "react";

export default class Tangram extends React.Component {

  render() {
    const { tangram, tangram_num, player, target, ...rest } = this.props;

    const row = 1 + Math.floor(tangram_num / 2)
    const column = 1 + tangram_num % 2
    const mystyle = {
      "background" : "url(" + tangram + ")",
      "backgroundSize": "cover",
      "width" : "25vh",
      "height" : "25vh",
      "gridRow": row,
      "gridColumn": column
    };

    // Highlight target object for speaker at selection stage
    // Show it to both players at feedback stage.
    if(target == tangram) {
      _.extend(mystyle, {
        "outline" :  "10px solid #000",
        "zIndex" : "9"
      })
    }

    return (
      <div
        style={mystyle}
        >
      </div>
    );
  }
}
