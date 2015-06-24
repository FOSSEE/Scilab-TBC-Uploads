clc
C = 1000 // cost of fixture
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
N = (C*(I+T+D+M)+(Co-Cs)*I)/(a*(1+b)) // pieces per year
printf("\n Number of pieces which must be produced to break even so that fixture may pay for itself = %d pieces per year" , N)
// Answers vary due to round off error
