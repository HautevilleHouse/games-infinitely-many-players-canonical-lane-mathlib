import GamesInfinitelyManyPlayersCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure GameSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GameAdmittedObject where
  space : GameSpace
  infinitePlayers : Prop
  payoffFunctions : Prop
  equilibriumExists : Prop
  conclusion : equilibriumExists

def GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.equilibriumExists

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse