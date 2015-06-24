clc
N = 9000 // number of pieces
Co = 700 // cost of old fixture
Cs = 250 // scrap value
a = 10 //saving per piece in paisa
a = a/100
b = 30 // overhead applied on direct labour saved
b = b/100
I = 8 // interest rate
I = I/100
M = 3 // allowance for maintenance
M = M/100
T = 12 // allowance for tax
T = T/100
H = 3/2 // amortization
D = 1/H // allowance for depreciation
C = (N*a*(1+b)-(Co-Cs)*I)/(I+T+D+M) // cost in Rs
printf("\n Cost for new fixture = Rs %d" , C)
// Answers vary due to round off error
