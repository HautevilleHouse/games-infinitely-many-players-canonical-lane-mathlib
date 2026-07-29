import GamesInfinitelyManyPlayersCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure AdmissibleClass where
  object : GameAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse