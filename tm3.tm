alphabet: {0,1,2,X,Y,Z,W}
start: p0
p0 (0 -> X,S p1) (1 -> 1,R p0) (2 -> 2,R p0) (X -> X,R p0) (Y -> Y,R p0) (_ -> _,S p2)
p1 (1 -> Y,S p0) (0 -> 0,R p1) (2 -> 2,R p1) (X -> X,R p1) (Y -> Y,R p1) (_ -> _,H reject)
p2 (1 -> 1,S p3) (0 -> 0,R p2) (2 -> 2,R p2) (X -> X,R p2) (Y -> Y,R p2) (_ -> _,H reject)
p3 (1 -> Z,S p4) (Y -> Z,S p4) (0 -> 0,R p3) (2 -> 2,R p3) (X -> X,R p3) (Z -> Z,R p3) (W -> W,R p3) (_ -> _,S p5)
p4 (2 -> W,S p3) (0 -> 0,R p4) (1 -> 1,R p4) (X -> X,R p4) (Y -> Y,R p4) (Z -> Z,R p4) (W -> W,R p4) (_ -> _,H reject)
p5 (2 -> 2,H accept) (0 -> 0,R p5) (1 -> 1,R p5) (X -> X,R p5) (Y -> Y,R p5) (Z -> Z,R p5) (W -> W,R p5) (_ -> _,H reject)