//Problem 9.09:

//initializing the variables:
Z = 10000; // in lb/h
x = 0.1;
y = 0.75;
Ts = 340;// in deg F
T = 212; // in deg F
U = 500; // in Btu/h.ft2.deg F

//calculation:
X = Z*x/y
Y = Z - X
//from Fig. 9.4:
Hz = 81 // in Btu/lb
Hx = 395 // in Btu/lb
Hy = 1150 // in Btu/lb
Q = Hy*Y + Hx*X - Hz*Z
A = Q/(U*(Ts - T))

printf("\n\nResult\n\n")
printf("\n the area requirement in the evaporator is %.1f ft^2",A)