import GamesInfinitelyManyPlayersCanonicalLaneLean.AdmissibleClass

/-!
# Equilibrium Existence Package
-/

namespace HautevilleHouse
namespace GamesInfinitelyManyPlayersCanonicalLaneLean

structure EquilibriumExistencePackage where
  strategySpace : Type u
  payoffFunctions : strategySpace → strategySpace → ℝ
  nashEquilibriumExists : Prop
  mixedStrategyExtension : Prop
  fixedPointArgument : Prop

structure EquilibriumExistenceEvidence (E : EquilibriumExistencePackage) where
  nashEquilibriumExistsClosed : E.nashEquilibriumExists
  mixedStrategyExtensionClosed : E.mixedStrategyExtension
  fixedPointArgumentClosed : E.fixedPointArgument

def EquilibriumExistenceClosed (E : EquilibriumExistencePackage) : Prop :=
  E.nashEquilibriumExists ∧ E.mixedStrategyExtension ∧ E.fixedPointArgument

theorem equilibrium_existence_closed_from_evidence (E : EquilibriumExistencePackage)
    (Ev : EquilibriumExistenceEvidence E) : EquilibriumExistenceClosed E := by
  exact And.intro Ev.nashEquilibriumExistsClosed
    (And.intro Ev.mixedStrategyExtensionClosed Ev.fixedPointArgumentClosed)

end GamesInfinitelyManyPlayersCanonicalLaneLean
end HautevilleHouse