import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure MinimaxTheoremPackage {A : AdmissibleClass} where
  zeroSumGame : Prop
  valueExistence : Prop
  optimalStrategies : Prop
  infinitePlayerExtension : Prop

structure MinimaxTheoremEvidence {A : AdmissibleClass}
    (M : MinimaxTheoremPackage A) where
  zeroSumGameClosed : M.zeroSumGame
  valueExistenceClosed : M.valueExistence
  optimalStrategiesClosed : M.optimalStrategies
  infinitePlayerExtensionClosed : M.infinitePlayerExtension

def MinimaxTheoremClosed {A : AdmissibleClass} (M : MinimaxTheoremPackage A) : Prop :=
  M.zeroSumGame ∧ M.valueExistence ∧ M.optimalStrategies ∧ M.infinitePlayerExtension

theorem minimax_theorem_closed_from_evidence {A : AdmissibleClass}
    (M : MinimaxTheoremPackage A) (E : MinimaxTheoremEvidence M) :
    MinimaxTheoremClosed M := by
  exact And.intro E.zeroSumGameClosed
    (And.intro E.valueExistenceClosed
      (And.intro E.optimalStrategiesClosed E.infinitePlayerExtensionClosed))

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse