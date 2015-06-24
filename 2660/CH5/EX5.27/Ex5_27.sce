clc
n = 6500 // yearly production
c = 1350 // cost of fixture
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
co = 700 // cost of old fixture
cs = 250 // scrap value
H = (c)/((n*a*(1+b))-I*(co-cs)-c*(I+T+M)) // amotization in years
printf("\n Time taken to amortize the fixture = %0.1f years" , H)
