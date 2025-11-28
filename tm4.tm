alphabet: {0, 1, x, y, #}
start: q0

q0 (0 -> #, R q1)
q0 (# -> #, L accept)
q0 (x -> x, R q4)

q1 (x -> x, R q1)
q1 (0 -> 0, R q1)
q1 (1 -> x, L q2)

q2 (x -> x, L q2)
q2 (0 -> 0, L q2)
q2 (# -> #, R q0)

q4 (x -> x, R q4)
q4 (_ -> _, L accept)
q4 (1 -> 1, S q5)
q5 (# -> 0, R q5)
q5 (x -> x, R q5)
q5 (1 -> 1, S q0)