clc
// Automatic lathe
p = 30 // number of pieces produced per hour 
l = 4 // labour rate per hour in Rs
d = 4.50 // hourly depreciation rate per machine in hour
s = 4 // set up time in hour
// turret lathe
P = 10 // number of pieces produced per hour 
L = 4 // labour rate per hour in Rs
D = 1.50 // hourly depreciation rate per machine in hour
S = 2 // set up time in hour
q = (P*p*(S*L+S*D-s*l-s*d))/(P*(l+d)-p*(L+D)) // quantity of pieces at break even point
printf("\n Quantity of pieces at Break even point = %d pieces" , q)
