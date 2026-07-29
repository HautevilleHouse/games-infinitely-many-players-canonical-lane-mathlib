import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure AdmissibleClass where
  object : GameObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure GameObject where
  playerSet : Type u
  strategySpace : playerSet → Type v
  payoffFunction : (p : playerSet) → strategySpace p → ℝ
  equilibrium : Prop
  equilibriumTerm : equilibrium

structure NashEquilibriumPackage (A : AdmissibleClass) where
  pureStrategyNash : Prop
  mixedStrategyNash : Prop
  existenceTheorem : Prop
  uniquenessConditions : Prop

structure NashEquilibriumEvidence {A : AdmissibleClass} (N : NashEquilibriumPackage A) where
  pureStrategyNashClosed : N.pureStrategyNash
  mixedStrategyNashClosed : N.mixedStrategyNash
  existenceTheoremClosed : N.existenceTheorem
  uniquenessConditionsClosed : N.uniquenessConditions

def NashEquilibriumClosed {A : AdmissibleClass} (N : NashEquilibriumPackage A) : Prop :=
  N.pureStrategyNash ∧ N.mixedStrategyNash ∧ N.existenceTheorem ∧ N.uniquenessConditions

theorem nash_equilibrium_closed_from_evidence {A : AdmissibleClass}
    (N : NashEquilibriumPackage A) (E : NashEquilibriumEvidence N) :
    NashEquilibriumClosed N := by
  exact And.intro E.pureStrategyNashClosed
    (And.intro E.mixedStrategyNashClosed
      (And.intro E.existenceTheoremClosed E.uniquenessConditionsClosed))

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse