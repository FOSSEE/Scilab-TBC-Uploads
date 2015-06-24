clc
a = 1.50 //saving in labour
b=55/100 // burden applied on labour
T = 4/100 // allowance for taxes
M = 5/100 // allowance for maintenance
I = 8/100 // interest rate
D = 50/100 // allowance for depreciation
H = 2 // years to amortize the investment
S = 50 // yearly cost for set up
C = 3000 // first cost
N1 = (C*(I+T+M+D)+S)/(a*(1+b)) // annual production when 1 run is made
r = 5 // number of runs
N2 = (C*(I+T+M+D)+S*r)/(a*(1+b)) // annual production when 1 run is made
D1 = 100/100 // allowance for depreciation
N3 = (C*(I+T+M+D1)+S)/(a*(1+b)) // production when D = 100
n1 = 1530 // pieces
C1 = (n1*(a*(1+b))-S)/(I+T+M+D1) // economical investment
n2 = 950 // pieces
a1 = 2 // labour cost
r1 = 6 // number of runs
S1 = r1*S // yearly cost
V = n2*a1*(1+b)-C*(I+T+M+D)-S1 //profit
printf("\n Number of pieces when one run is made and cost is Rs 3000 = %d pieces",N1)
printf("\n Annual production when 5 runs are made per year = %d pieces" , N2)
printf("\nAnnual production when fixture pay for itself = %d pieces" , N3)
printf("\nEconomical investment when 1530 pieces for single run with savings Rs 1.50 per piece = Rs %d",C1)
printf("\nAnnual profit when 950 pieces made per year in 6 runs and saving in labour cost Rs 2 per piece = Rs %d per year" , V)
//  'Answers vary due to round off error'
 
