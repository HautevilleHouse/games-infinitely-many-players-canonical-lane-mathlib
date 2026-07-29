import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure MechanismDesignPackage {A : AdmissibleClass} where
  revelationPrinciple : Prop
  incentiveCompatibility : Prop
  efficiencyConditions : Prop
  infinitePlayerImplementation : Prop

structure MechanismDesignEvidence {A : AdmissibleClass}
    (M : MechanismDesignPackage A) where
  revelationPrincipleClosed : M.revelationPrinciple
  incentiveCompatibilityClosed : M.incentiveCompatibility
  efficiencyConditionsClosed : M.efficiencyConditions
  infinitePlayerImplementationClosed : M.infinitePlayerImplementation

def MechanismDesignClosed {A : AdmissibleClass} (M : MechanismDesignPackage A) : Prop :=
  M.revelationPrinciple ∧ M.incentiveCompatibility ∧ M.efficiencyConditions ∧ M.infinitePlayerImplementation

theorem mechanism_design_closed_from_evidence {A : AdmissibleClass}
    (M : MechanismDesignPackage A) (E : MechanismDesignEvidence M) :
    MechanismDesignClosed M := by
  exact And.intro E.revelationPrincipleClosed
    (And.intro E.incentiveCompatibilityClosed
      (And.intro E.efficiencyConditionsClosed E.infinitePlayerImplementationClosed))

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse