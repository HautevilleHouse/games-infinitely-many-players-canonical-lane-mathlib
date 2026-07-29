import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure CorrelatedEquilibriumPackage where
  jointDistribution : Type u
  playerTypes : Type v
  incentiveConstraints : Prop
  noBeneficialDeviation : Prop

structure CorrelatedEquilibriumEvidence (P : CorrelatedEquilibriumPackage) where
  incentiveConstraintsClosed : P.incentiveConstraints
  noBeneficialDeviationClosed : P.noBeneficialDeviation

def CorrelatedEquilibriumClosed (P : CorrelatedEquilibriumPackage) : Prop :=
  P.incentiveConstraints ∧ P.noBeneficialDeviation

theorem correlated_equilibrium_closed_from_evidence (P : CorrelatedEquilibriumPackage)
    (E : CorrelatedEquilibriumEvidence P) : CorrelatedEquilibriumClosed P := by
  exact And.intro E.incentiveConstraintsClosed E.noBeneficialDeviationClosed

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse