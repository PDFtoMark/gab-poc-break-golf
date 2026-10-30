import Lake
open Lake DSL

-- Same package/library shape as trailofbits/break-golf, with a trivial
-- challenge tree instead of the Mathlib-backed one so the PoC runs quickly.
package BreakGolf where
  leanOptions := #[⟨`autoImplicit, false⟩, ⟨`relaxedAutoImplicit, false⟩]

lean_lib Challenges where
  srcDir := "challenges"
  globs := #[.submodules `Challenges]

lean_lib Solutions where
  srcDir := "solutions"
  globs := #[.submodules `Solution, .one `Verify]
