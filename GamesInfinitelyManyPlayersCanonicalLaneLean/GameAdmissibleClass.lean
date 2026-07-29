import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

struct GamePackage where
  playerSet : Type u
  strategySpaces : Type v
  payoffFunctions : Type w
  infinitePlayers : Prop
  strategicFormDefined : Prop

struct ZeroSumGamePackage where
  game : GamePackage
  zeroSumPayoffs : Prop

struct BargainingProblemPackage where
  players : Type u
  disagreementPoint : Type v
  feasibleSet : Type w
  bargainingSetDefined : Prop

struct MechanismPackage where
  agentSet : Type u
  outcomeFunction : Type v
  mechanismDefined : Prop

struct CoalitionalGamePackage where
  grandCoalition : Type u
  coalitionValues : Type v
  coalitionStructureDefined : Prop

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse