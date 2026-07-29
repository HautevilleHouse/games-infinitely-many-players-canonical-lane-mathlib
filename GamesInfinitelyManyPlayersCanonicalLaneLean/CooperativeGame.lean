import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure CooperativeGamePackage (C : CoalitionalGamePackage) where
  characteristicFunction : Type u
  solutionConcept : Type v
  coreNonempty : Prop
  shapleyValueDefined : Prop
  nucleolusDefined : Prop
  cooperativeSolutionExists : Prop

structure CooperativeGameEvidence {C : CoalitionalGamePackage} (G : CooperativeGamePackage C) where
  coreNonemptyClosed : G.coreNonempty
  shapleyValueDefinedClosed : G.shapleyValueDefined
  nucleolusDefinedClosed : G.nucleolusDefined
  cooperativeSolutionExistsClosed : G.cooperativeSolutionExists

def CooperativeGameClosed {C : CoalitionalGamePackage} (G : CooperativeGamePackage C) : Prop :=
  G.coreNonempty ∧ G.shapleyValueDefined ∧ G.nucleolusDefined ∧ G.cooperativeSolutionExists

theorem cooperative_game_closed_from_evidence
    {C : CoalitionalGamePackage} (G : CooperativeGamePackage C) (E : CooperativeGameEvidence G) :
    CooperativeGameClosed G := by
  exact And.intro E.coreNonemptyClosed (And.intro E.shapleyValueDefinedClosed (And.intro E.nucleolusDefinedClosed E.cooperativeSolutionExistsClosed))

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse