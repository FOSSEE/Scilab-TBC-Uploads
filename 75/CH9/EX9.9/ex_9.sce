        //    PG (610)

w = [1/3 2/3 2/3]'
w1 = w(1,1)
w2 = w(2,1)
w3 = w(3,1)

U = [1-2*abs(w1)^2 -2*w1*w2' -2*w1*w3';-2*w1'*w2 1-2*abs(w2)^2 -2*w2*w3';-2*w1'*w3 -2*w2'*w3 1-2*abs(w3)^2]
U
inv(U)
//    U = inv(U)------Hence, U is Hermitian
U*U
//    U*U = I---------Hence, U is orthogonal
