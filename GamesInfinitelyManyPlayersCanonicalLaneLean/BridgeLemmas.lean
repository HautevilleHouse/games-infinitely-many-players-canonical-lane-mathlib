import GamesInfinitelyManyPlayersCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse