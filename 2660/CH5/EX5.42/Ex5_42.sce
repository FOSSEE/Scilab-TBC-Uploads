clc
A = 40000 // number of units per year
I = 25 // carrying cost in percent
I = I/100
C1 = 8 // cost for 0 < N < 1000 per unit in Rs
C2 = 7.5 // cost for 1000 < N < 10000 per unit in Rs
C3 = 7.25 // cost for N >= 10000 per unit in Rs
R = 250 // ordering cost per order in Rs
N = 10000 // units
N1 = sqrt(2*R*A/(I*C3)) // optimal quantity for lowest curve
G1= C3*A+(A*R)/N+I*C3*N/2 // total cost in Rs
N2 = sqrt(2*R*A/(I*C2)) // optimal quantity for higher curve
G2= C2*A+(A*R)/N2+I*C2*N2/2 // total cost in Rs
N3 = sqrt(2*R*A/(I*C1)) // optimal quantity for highest curve
G3 = C1*A+(A*R)+1 // total cost in Rs
printf("\n Total cost for lowest cost curve = Rs %0.2f\n Total cost for next higher curve = Rs %0.2f\n Total cost for highest curve = Rs %0.2f " , G1,G2,G3)
disp("Comparing all total cost lowest is Rs 300,062.50 for an order quantity of 10,000.")
disp("N = 10,000 and No. of orders = 4")
