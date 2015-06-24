// Scilab Code Ex1.26 Decay of unstable particle: Pg: 31 (2008)
c = 3e+08;    // Speed of light, m/s 
v = 0.9*c;    // Relativistic speed of unstable particle, m/s
t0 = 1e-06;    // Time of decay of unstable particle in rest frame, s
t = t0/sqrt(1 - (v/c)^2);    //Time of decay of unstable particle in moving frame, s 
s = v*t;    // Distance travelled by unstable particle before it decays in moving frame, m   
printf("\nThe distance travelled before the unstable particle decays = %4.2e m", s);
// Result 
// The distance travelled before the unstable particle decays = 6.19e+002 m 