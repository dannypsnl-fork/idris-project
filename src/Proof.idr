module Proof

plus_reduces : (n : Nat) -> Z + n = n
plus_reduces n = Refl

plus_right_id : (n : Nat) -> n + 0 = n
plus_right_id Z = Refl
plus_right_id (S n) = cong S (plus_right_id n)

plus_reduces_S : (n : Nat) -> (m : Nat) -> n + (S m) = S (n + m)
plus_reduces_S Z m = cong S Refl
-- cong: congruence, take `f` to show `a = b` iff `(f a) = (f b)`
plus_reduces_S (S k) m = cong S (plus_reduces_S k m)

plus_commutes : (n, m : Nat) -> n + m = m + n
plus_commutes Z m = ?m
plus_commutes (S n) m = ?m2

sym : forall x, y . (0 rule : x = y) -> y = x
sym Refl = Refl

trans : forall x, y, z . (0 l : x = y) -> (0 r : y = z) -> x = z
trans Refl Refl = Refl
