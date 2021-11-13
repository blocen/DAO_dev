query carb {
  space(id: "carbinocapital.eth") {
    id
    name
    voting {
      delay
      period
      type
      quorum
      blind
    }

  }
}

query carb_props {
  proposals (
    first: 20,
    skip: 0,
    where: {
      space_in: ["carbinocapital.eth"],
      state: ""
    },
    orderBy: "created",
    orderDirection: desc
  ) {
    id
    title
    scores
    scores_state
    scores_total
    scores_updated
    scores_by_strategy
    choices
    body
    choices
    start
    end
    snapshot
    state
  }
}


query Votes {
  votes (
    first: 2
    where: {
      proposal_in: [],
      proposal: "",
      space_in: ["ens.eth", "carbinocapital.eth"]
    }
  ) {
    id
    voter
    created
    choice
    space {
      id
    }
  }
}
