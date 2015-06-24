//Problem 9.08:

//initializing the variables:
Z = 10000; // in lb/h
x = 0.1;
y = 0.75;
Ts = 75;// in deg C

//calculation:
X = Z*x/y
Y = Z - X
//from Fig. 9.4:
Hz = 81 // in Btu/lb
Hx = 395 // in Btu/lb
Hy = 1150 // in Btu/lb
Q = Hy*Y + Hx*X - Hz*Z

printf("\n\nResult\n\n")
printf("\n the evaporator heat required, Q is %.0f Btu/h",Q)