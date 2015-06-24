clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.19
// Page 245
printf("Example 5.19, Page 245 \n \n");

// solution

H1 = 482.9  // kJ/kg
H2 = 273.4
fi1 = 100*(H1-H2) // kJ/h
T1 = 313.15
T2 = 403.15
fi11 = 21.3655*(T2-T1)+64.2841*10^-3*(T2^2-T1^2)/2-41.0506*10^-6*(T2^3-T1^3)/3+9.7999*10^-9*(T2^4-T1^4)/4  // kJ/h
// at 20 MPa
h1 = 211.1
Ts = 277.6
H11 = 427.8
x = poly(0, 'x')
p = x*h1+(100-x)*H11-100*H2
a = roots(p)
fi2 = (100-a)*(H11-h1)  // kJ/h
h2 = -148.39
H3 = 422.61
y = poly(0, 'y')
p1 = 100*176.18-(100-y)*H3+h2*y
b = roots(p1)
fi3 = 100*(h1-176.8)
H = fi3+24021 
H4 = H/(100-43.16)
// from ref 23
T = 262.15
printf(" (a) \n \n Yield of dry ice = "+string(b)+" kg. \n \n \n (b) \n \n Percent liquifaction = "+string(a)+". \n \n \n (c) \n \n Temp of vented gas = "+string(T)+" K.")
