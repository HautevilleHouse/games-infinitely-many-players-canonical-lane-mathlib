import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure PotentialGame where
  playerSet : Type u
  strategySpace : Type v
  potentialFunction : Type w
  payoffDerivedFromPotential : Prop
  equilibriumSet : Prop

structure PotentialGameEvidence (P : PotentialGame) where
  payoffDerivedFromPotentialClosed : P.payoffDerivedFromPotential
  equilibriumSetClosed : P.equilibriumSet

def PotentialGameClosed (P : PotentialGame) : Prop :=
  P.payoffDerivedFromPotential ∧ P.equilibriumSet

theorem potential_game_closed_from_evidence (P : PotentialGame) (E : PotentialGameEvidence P) :
    PotentialGameClosed P :=
  And.intro E.payoffDerivedFromPotentialClosed E.equilibriumSetClosed

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse