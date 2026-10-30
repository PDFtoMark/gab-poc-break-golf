/- The trusted statement, standing in for Challenges/SpoC128/Challenge.lean.
`wins : False` models "the break": an honest submission cannot inhabit this
type, so anything the board records has to come from the verifier's own
(reachable) trust boundary. -/

namespace Challenge.Fake

structure Solution (budget advNum advDen : Nat) where
  advNum_pos : 0 < advNum
  advDen_pos : 0 < advDen
  wins : False

end Challenge.Fake
