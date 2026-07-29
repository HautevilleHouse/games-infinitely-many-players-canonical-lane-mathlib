import canonicalLaneMathlib.AdmissibleClass
import GamesInfinitelyManyPlayersCanonicalLaneLean.GameAdmissibleClass
import GamesInfinitelyManyPlayersCanonicalLaneLean.BridgeLemmas
import GamesInfinitelyManyPlayersCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

def ConstrainedGameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_game_endgame (A : AdmissibleClass) :
    ConstrainedGameClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse