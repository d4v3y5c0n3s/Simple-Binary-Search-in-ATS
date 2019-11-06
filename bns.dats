#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//  binary search function
(*
    (NOTE: here, binary search is used to calculate the inverse of an increasing or decreasing function on integers)
*)
fun binsrch
(
    f: int -<cloref1> uint, x0: uint, lb: int, ub: int
)
    if lb <= ub then let
        val mid = lb + (ub - lb) / 2
    in
        if x0 > f (mid) then
            binsrch (f, x0, lb, mid-1)
        else
            binsrch (f, x0, mid+1, ub)
    end else ub

implement main0 () = ()
