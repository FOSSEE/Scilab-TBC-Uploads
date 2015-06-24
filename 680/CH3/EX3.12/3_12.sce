//Problem 3.12:

//initializing the variables:
Pc = 45.4; // in atm
Tc = 343; // in deg R
T = 373; // in K
P = 10; // in atm
w = 0.007

//calculation:
//Redlich–Kwong equation in terms of a, b, and V.
//P = [RT/(V - b)] - a/[T^0.5 * V(V + b)]
T = T*1.8
//10 = [(0.73)(671)/(V - b)] - a/[671^0.5*V(V + b)]
a = 10933
b = 0.478
//from these we get and By trial-and-error
V = 48.8; // in ft^3

printf("\n\nResult\n\n")
printf("\n the molar volume is %.1f ft^3",V)
