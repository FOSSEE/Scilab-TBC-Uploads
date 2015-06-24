// Variable declaration
n = 5
k = 1

// Calculation
X = [1 0 ; 1 1 ; 1 2 ; 1 3 ; 1 4]
Y = [8 ; 9 ; 4 ; 3 ; 1]

XT = X'

XTX = XT*X
XTXI = [0.6 -0.2; -0.2 0.1]
XTY = XT*Y

b = XTXI*XTY

Y1 = X*b
MMT = ((Y-Y1)')*(Y-Y1)
MMT = int(MMT)

Se_square = (1.0/(n-k-1))*MMT 

Final = Se_square*XTXI

// Result
printf ( "var(bo): %.2f",Final(1,1))
printf ( "var(b1): %.2f",Final(2,2) )
