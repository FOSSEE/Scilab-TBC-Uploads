// Scilab Code Ex1.42: : Page-1.59 (2009)
clc; clear;
m = 9.1e-031;   // Electronic mass, kg
c = 3e+08;      // Speed of light, m/s
e = 1.6e-019;   // Charge on the electron, C
V = 12.4e+03;   // Potential diffeence applied across the X-ray tube, V
i = 2e-03;  // Current through the X-ray tube, A
t = 1;  // Time for which the electrons strike the target material, s
N = i*t/e;    // Number of electrons striking the target per sec, per sec
v_max = sqrt(2*e*V/m);  // Maximum speed of the electrons, m/s

printf("\nThe number of electrons striking the target per sec = %4.2e electrons/sec", N);
printf("\nThe maximum speed of the electrons when they strike = %3.1e m/s", v_max);
      

// Result 
// The number of electrons striking the target per sec = 1.25e+16 electrons/sec
// The maximum speed of the electrons when they strike = 6.6e+07 m/s
