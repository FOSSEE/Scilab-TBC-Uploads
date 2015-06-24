// Scilab Code Ex8.6: Page-431 (2011)
clc;clear;
I = 2.5e+004;....// Sound intensity, W/meter-square
v = 1480;....// Sound velocity, m/s
rho_w = 1000;....// Density of water, kg/meter-cube
rho_c = 2650;....// Density of crystal of transducer, kg/meter-cube
d = 0.001;....// Thickness of the quartz, m
f = 20e+003;....// Frequency of sound in water, Hz
// As sound intensity, I = p^2/(2*rho1*v), solving for p
p = sqrt(2*rho_w*v*I);    // Pressure in the medium, N/metre-square
a = p/(d*rho_c);    // Maximum acceleration of the quartz ultrasonic transducer, metre/second-square
printf("\nThe maximum acceleration produced in quartz transducer = %4.2e metre/second-square", a);
y = a/(2*%pi*f)^2;    // Maximum displacement of the quartz transducer, m
printf("\nThe maximum displacement of quartz transducer = %3.1f micron", y/1e-006);

// Result
// The maximum acceleration produced in quartz transducer = 1.03e+005 metre/second-square
// The maximum displacement of quartz transducer = 6.5 micron