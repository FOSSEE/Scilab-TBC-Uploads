clc
n = 9000 // production of pieces per year
c = 1000 // fixture costs
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
h = 1.5 // amortization
D = 1/h // allowance for depreciation
V = (n*a*(1+b))-(c*(I+T+D+M))-((Co-Cs)*I) // profit
printf("\n profit = Rs %d " , V) 
// Answers vary due to round off error
