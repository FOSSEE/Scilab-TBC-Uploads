        //    PG (11)

A = [1 -1;3 2]
x = [1;2]
y = A*x
norm(A,'inf')
norm(x,'inf')
norm(y,'inf')

x = [1;1]
y = A*x
norm(y,'inf')
norm(A,'inf')*norm(x,'inf')

//    norm(y,'inf') = norm(A,'inf') * norm(x,'inf')