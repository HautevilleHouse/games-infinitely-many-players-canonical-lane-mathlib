import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure BargainingSolutionPackage {A : AdmissibleClass} where
  nashBargainingSolution : Prop
  kalaiSmorodinskySolution : Prop
  egalitarianSolution : Prop
  infinitePlayerAdaptation : Prop

structure BargainingSolutionEvidence {A : AdmissibleClass}
    (B : BargainingSolutionPackage A) where
  nashBargainingSolutionClosed : B.nashBargainingSolution
  kalaiSmorodinskySolutionClosed : B.kalaiSmorodinskySolution
  egalitarianSolutionClosed : B.egalitarianSolution
  infinitePlayerAdaptationClosed : B.infinitePlayerAdaptation

def BargainingSolutionClosed {A : AdmissibleClass} (B : BargainingSolutionPackage A) : Prop :=
  B.nashBargainingSolution ∧ B.kalaiSmorodinskySolution ∧ B.egalitarianSolution ∧ B.infinitePlayerAdaptation

theorem bargaining_solution_closed_from_evidence {A : AdmissibleClass}
    (B : BargainingSolutionPackage A) (E : BargainingSolutionEvidence B) :
    BargainingSolutionClosed B := by
  exact And.intro E.nashBargainingSolutionClosed
    (And.intro E.kalaiSmorodinskySolutionClosed
      (And.intro E.egalitarianSolutionClosed E.infinitePlayerAdaptationClosed))

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse