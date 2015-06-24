clear;
//clc();

// Example 7.3
// Page: 138
printf("Example-7.3  Page no.-138\n\n");

//***Data***//

T = 100+460;//[R] Temperature
P = 1000;//[psia] Pressure
R = 10.73;//[(psi*ft^(3)/(lbmol*R))] Gas constant

// From the figure 7.3(page 138) we see that as P tends to zero, (f/P) tends to 1, so f tends to 0. Therefore, f_a tends to zero also in the diagram
// fugacity at point b is calculated by the equation
// (f/P)_b = exp((-1/(R*T))*integrate(a*dp)), with integration limit of p, 0 and P = 0.9503
// We have
f_b = 0.95;//[psia]

// We also can write
f_c = f_b;//[psia]

// To find the value of f_d, we use the equation 
// integrate(d(logf))_T = integrate((v/(R*T))*dp)_T.................................................(1)
// here 'v' is practically constant(for a liquid), and
v = 0.016136*18;//[ft^(3)/lbmol]

// and from the figure 7.3, we have 
P_d = 1000;//[psia]
P_c = 1;//[psia]

// integrating the left hand side of the equation with the integration limits f_c and f_d and solving, we have
f_d = f_c*exp((v/(R*T))*integrate('p^(0)','p',P_c,P_d));

printf("Fugacity of the pure liquid water at the given condition is %0.1f psia",f_d);
