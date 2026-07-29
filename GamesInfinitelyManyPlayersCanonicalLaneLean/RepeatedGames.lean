import GamesInfinitelyManyPlayersCanonicalLaneLean.AdmissibleClass

/-!
# Repeated Games Package
-/

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure RepeatedGamesPackage where
  stageGame : Type u
  discountFactor : ℝ
  folkTheorem : Prop
  subgamePerfectEquilibrium : Prop
  reputationEffects : Prop

structure RepeatedGamesEvidence (R : RepeatedGamesPackage) where
  folkTheoremClosed : R.folkTheorem
  subgamePerfectEquilibriumClosed : R.subgamePerfectEquilibrium
  reputationEffectsClosed : R.reputationEffects

def RepeatedGamesClosed (R : RepeatedGamesPackage) : Prop :=
  R.folkTheorem ∧ R.subgamePerfectEquilibrium ∧ R.reputationEffects

theorem repeated_games_closed_from_evidence (R : RepeatedGamesPackage)
    (Ev : RepeatedGamesEvidence R) : RepeatedGamesClosed R := by
  exact And.intro Ev.folkTheoremClosed
    (And.intro Ev.subgamePerfectEquilibriumClosed Ev.reputationEffectsClosed)

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse