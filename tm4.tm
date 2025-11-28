alphabet: {0, 1, 2, x}
start: q0

q0 (0 -> _, R q1)
q0 (x -> x, R q4)
q0 (_ -> _, L accept)

q1 ({0,x} -> ., R q1)
q1 (1 -> x, R q2)

q2 ({1,x} -> ., R q2)
q2 (2 -> x, L q3)

q3 ({0,1,x} -> ., L q3)
q3 (_ -> _, R q0)

q4 (x -> x, R q4)
q4 (_ -> _, L accept)
