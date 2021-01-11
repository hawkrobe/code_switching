import React from "react";

import { Centered, AlertToaster } from "meteor/empirica:core";

import { Radio, RadioGroup } from "@blueprintjs/core";

import { Checkbox } from "@blueprintjs/core";

export default class GroupQuiz extends React.Component {
  state = {
    nParticipants: "",
    scoreOption: "",
    idle: "",
    largeError: "",
    mc_red: false,
    mc_yellow: false,
    mc_green: false,
    mc_blue: false,
    num_players: 0,
    teamColor: "",
    community: "",
  };

  componentDidMount() {
    const { game } = this.props;
    this.state.num_players = game.treatment.playerCount;
    this.state.teamColor = game.treatment.teamColor;
  }

  handleChange = (event) => {
    const el = event.currentTarget;
    this.setState({ [el.name]: el.value.trim().toLowerCase() });
  };

  handleRadioChange = (event) => {
    const el = event.currentTarget;
    console.log("el", el);
    console.log("ev", event);
    this.setState({ [el.name]: el.value });
  };

  handleEnabledChange = (event) => {
    const el = event.currentTarget;
    this.setState({ [el.name]: !this.state[el.name] });
  };

  handleSubmit = (event) => {
    event.preventDefault();

    //it should be this.state.nParticipants !== "3" but we don't have "treatment" in QUIZ
    if (
      this.state.nParticipants !== this.state.num_players.toString() ||
      this.state.scoreOption !== "all" ||
      // this.state.idle !== "100" ||
      this.state.largeError !== "0" ||
      !this.state.mc_red ||
      this.state.mc_yellow || //only this one is correct
      this.state.mc_green ||
      !this.state.mc_blue ||
      this.state.community !== this.state.teamColor
      // this.state.mc_2_101 ||
      // !this.state.mc_2_102 || //this one is correct
      // this.state.mc_2_103 ||
      // !this.state.mc_2_104 || //this one is correct
      // this.state.mc_2_105 ||
      // this.state.emptyOption !== "yes"
    ) {
      AlertToaster.show({
        message:
          "Sorry, you have one or more mistakes. Please ensure that you answer the questions correctly, or go back to the instructions",
      });
    } else {
      this.props.onNext();
    }
  };

  render() {
    const { hasPrev, onPrev, game, treatment } = this.props;
    return (
      <Centered>
        <div className="quiz">
          <h1 className={"bp3-heading"}> Quiz </h1>
          <form onSubmit={this.handleSubmit}>
            <div className="bp3-form-group">
              <label className="bp3-label" htmlFor="number-of-participants">
                How many participants will play at the same time on your team, including
                yourself?
              </label>
              <div className="bp3-form-content">
                <input
                  id="nParticipants"
                  className="bp3-input"
                  type="number"
                  min="0"
                  max="150"
                  step="1"
                  dir="auto"
                  name="nParticipants"
                  value={this.state.nParticipants}
                  onChange={this.handleChange}
                  required
                />
              </div>
            </div>

            <div className="bp3-form-group">
              <div className="bp3-form-content">
                <RadioGroup
                  label="Select the true statement about the score:"
                  onChange={this.handleRadioChange}
                  selectedValue={this.state.scoreOption}
                  name="scoreOption"
                  required
                >
                  <Radio
                    label="I will score points based on how good my answers are no matter what my partner does."
                    value="single"
                  />
                  <Radio
                    label="My partner and I submit one answer as a team and therefore we will all get the same score."
                    value="all"
                  />
                </RadioGroup>
              </div>
            </div>

            {/*<div className="bp3-form-group">*/}
            {/*  <div className="bp3-form-content">*/}
            {/*    <RadioGroup*/}
            {/*      name="emptyOption"*/}
            {/*      label="is it ok to have some rooms empty? (the answer is 'Yes')"*/}
            {/*      onChange={this.handleRadioChange}*/}
            {/*      selectedValue={this.state.emptyOption}*/}
            {/*      required*/}
            {/*    >*/}
            {/*      <Radio label="Yes!" value="yes" />*/}
            {/*      <Radio label="No!" value="no" />*/}
            {/*    </RadioGroup>*/}
            {/*  </div>*/}
            {/*</div>*/}

            <div className="bp3-form-group">
              <label className="bp3-label" htmlFor="number-of-participants">
                If your team ended up NOT choosing a tangram before the time is up
                then your score in that task will be:
              </label>
              <div className="bp3-form-content">
                <input
                  id="nParticipants"
                  className="bp3-input"
                  type="number"
                  min="-10"
                  max="10"
                  step="1"
                  dir="auto"
                  name="largeError"
                  value={this.state.largeError}
                  onChange={this.handleChange}
                  required
                />
              </div>
            </div>

            <div className="bp3-form-group">
              <label className="bp3-label" htmlFor="neighbor-of-room-101">
                There are multiple communities that your team may be placed into. Each of these communities
                has a different set of tangram images. What colors are these communities?
                Select all that apply.
              </label>
              <div className="bp3-form-content ">
                <div className="bp3-control bp3-checkbox bp3-inline">
                  <Checkbox
                    name={"mc_red"}
                    label="Red"
                    onChange={this.handleEnabledChange}
                  />
                </div>
                <div className="bp3-control bp3-checkbox bp3-inline">
                  <Checkbox
                    name={"mc_yellow"}
                    label="Yellow"
                    onChange={this.handleEnabledChange}
                  />
                </div>
                <div className="bp3-control bp3-checkbox">
                  <Checkbox
                    name={"mc_green"}
                    label="Green"
                    onChange={this.handleEnabledChange}
                  />
                </div>
                <div className="bp3-control bp3-checkbox bp3-inline">
                  <Checkbox
                    name={"mc_blue"}
                    label="Blue"
                    onChange={this.handleEnabledChange}
                  />
                </div>
              </div>
            </div>

            <div className="bp3-form-group">
              <div className="bp3-form-content">
                <RadioGroup
                    label="Which community has your team been placed into?"
                    onChange={this.handleRadioChange}
                    selectedValue={this.state.community}
                    name="community"
                    required
                >
                  <Radio
                      label="We are in the red community."
                      value="red"
                  />
                  <Radio
                      label="We are in the yellow community."
                      value="yellow"
                  />
                  <Radio
                      label="We are in the green community."
                      value="green"
                  />
                  <Radio
                      label="We are in the blue community."
                      value="blue"
                  />
                </RadioGroup>
              </div>
            </div>

            {/*<div className="bp3-form-group">*/}
            {/*  <label className="bp3-label" htmlFor="neighbor-of-room-101">*/}
            {/*    Which community have you been placed into?*/}
            {/*  </label>*/}
            {/*  <div className="bp3-form-content ">*/}
            {/*    <div className="bp3-control bp3-checkbox">*/}
            {/*      <Checkbox*/}
            {/*        name={"mc_2_101"}*/}
            {/*        label="Room 101"*/}
            {/*        onChange={this.handleEnabledChange}*/}
            {/*      />*/}
            {/*    </div>*/}
            {/*    <div className="bp3-control bp3-checkbox bp3-inline">*/}
            {/*      <Checkbox*/}
            {/*        name={"mc_2_102"}*/}
            {/*        label="Room 102"*/}
            {/*        onChange={this.handleEnabledChange}*/}
            {/*      />*/}
            {/*    </div>*/}
            {/*    <div className="bp3-control bp3-checkbox bp3-inline">*/}
            {/*      <Checkbox*/}
            {/*        name={"mc_2_103"}*/}
            {/*        label="Room 103"*/}
            {/*        onChange={this.handleEnabledChange}*/}
            {/*      />*/}
            {/*    </div>*/}
            {/*    <div className="bp3-control bp3-checkbox">*/}
            {/*      <Checkbox*/}
            {/*        name={"mc_2_104"}*/}
            {/*        label="Room 104"*/}
            {/*        onChange={this.handleEnabledChange}*/}
            {/*      />*/}
            {/*    </div>*/}
            {/*    <div className="bp3-control bp3-checkbox">*/}
            {/*      <Checkbox*/}
            {/*        name={"mc_2_105"}*/}
            {/*        label="Room 105"*/}
            {/*        onChange={this.handleEnabledChange}*/}
            {/*      />*/}
            {/*    </div>*/}
            {/*  </div>*/}
            {/*</div>*/}

            <button
              type="button"
              className="bp3-button bp3-intent-nope bp3-icon-double-chevron-left"
              onClick={onPrev}
              disabled={!hasPrev}
            >
              Back to instructions
            </button>
            <button type="submit" className="bp3-button bp3-intent-primary">
              Submit
              <span className="bp3-icon-standard bp3-icon-key-enter bp3-align-right" />
            </button>
          </form>
        </div>
      </Centered>
    );
  }
}
