import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure BayesianGame where
  playerSet : Type u
  typeSpace : Type v
  commonPrior : Prop
  typeDependentPayoffs : Type w
  interimEquilibrium : Prop

structure BayesianGameEvidence (G : BayesianGame) where
  commonPriorClosed : G.commonPrior
  typeDependentPayoffsClosed : G.typeDependentPayoffs
  interimEquilibriumClosed : G.interimEquilibrium

def BayesianGameClosed (G : BayesianGame) : Prop :=
  G.commonPrior ∧ G.typeDependentPayoffs ∧ G.interimEquilibrium

theorem bayesian_game_closed_from_evidence (G : BayesianGame) (E : BayesianGameEvidence G) :
    BayesianGameClosed G :=
  And.intro E.commonPriorClosed (And.intro E.typeDependentPayoffsClosed E.interimEquilibriumClosed)

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse