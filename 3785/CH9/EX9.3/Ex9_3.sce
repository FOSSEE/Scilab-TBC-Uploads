// Example 9_3
clc;funcprot(0);
// Given data
dp=100;// The pressure drop in psi
rho=1*10^3;// The density of water in kg/m^3
g=9.807;// The acceleration due to gravity in m/s^2
Q=2000;// The flow rate of water in gal/min
D=4;// The next pipe size in inch
L=100;// Length in m
nu=1*10^-6;// m^2/s

// Calculation
deltah=(dp*6.895*10^3)/(rho*g);// m
printf("\nh_in-h_out=%2.2f m",deltah);
D=D*2.54*10^-2;// m
Q=Q*(3.782*10^-3)/60;// m^3/s
V=(4*Q)/(%pi*D^2);// m/s
Re_D=(V*D)/nu;// Reynolds number
epsilon=5*10^-5;// physical height
function[X]=frictionfactor(y)
    X(1)=-(2.0*log10(((epsilon/D)/3.7)+(2.51/(Re_D*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
// Guessing a value of f=1*10^-2;
y=[1*10^-2];
f=fsolve(y,frictionfactor);
K_f=f*((L)/D);// The head loss coefficient
deltah_f=K_f*((V^2)/(2*g));// The head loss in m
printf("\nD=%0.4f m \nQ=%1.3e m^3/s \nV=%2.2f m/s \nRe_D=%1.3e \nf=%1.3e \nK_f=%2.2f \nh_in-h_out=%3.1f m",D,Q,V,Re_D,f,K_f,deltah_f)
printf("\nThe head loss of 205.9 m is greater than the allowable los s of 70.31 m.");

// If we try the next size pipe, D = 6 in,
D=6;// inch
D=D*2.54*10^-2;// m
Q=2000;// The flow rate of water in gal/min
Q=Q*(3.782*10^-3)/60;// m^3/s
V=(4*Q)/(%pi*D^2);// m/s
Re_D=(V*D)/nu;// Reynolds number
epsilon=5*10^-5;// physical height
function[X]=frictionfactor(y)
    X(1)=-(2.0*log10(((epsilon/D)/3.7)+(2.51/(Re_D*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
// Guessing a value of f=1*10^-2;
y=[1*10^-2];
f=fsolve(y,frictionfactor);
K_f=f*((L)/D);// The head loss coefficient
deltah_f=K_f*((V^2)/(2*g));// The head loss in m
printf("\nD=%0.4f m \nQ=%1.3e m^3/s \nV=%1.3f m/s \nRe_D=%1.3e \nf=%1.3e \nK_f=%2.2f \nh_in-h_out=%2.2f m",D,Q,V,Re_D,f,K_f,deltah_f)
printf("\nThis is smaller than the allowable head loss so that a 6 in diameter pipe is acceptable.")
