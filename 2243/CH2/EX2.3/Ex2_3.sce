clc();
clear;
//Let us consider, wave function  y = A*sin(omega*t - K*x + phi)
A= 0.02;// Amplitude in m
lambda = 6; // Wavelength (lambda) = Crest Distance = 6 m
T= 2;// Time period is s
nu =  1/T; // Frequency in Hz
omega = 2*%pi*nu ; //Angular Frequency in rad/s
k = 2*%pi/lambda; //wave number in rad/m
//from Space profile, when x=1.5 m, t= 0
y = 0.02; //in m
x=1.5;//in m
t= 0; // in s
phi = (asin(y/A) +(k*x) - (omega*t)); // Initial phase in radians
printf(" Wave parameters from the space profile and time profile\n")
printf(" (1)Amplitude is %.2f m \n (2)Wavelength  is %d m \n (3)Time period is %d s \n (4)Frequency is %.1f Hz \n (5)Angular Frequency is %.3f rad/s\n (6)Wave number is %.3f rad/m \n (7)Initial phase is %.3f radians\n",A,lambda,T,nu,omega,k,phi);
// y(x,t=0) : -0.02 = 0.02*sin(0-(pi*x)/3 + pi)
//Thus  (-pi*x)/3 + pi = -pi/2,-5*pi/2, giving x= 9/2 m,21/2m
V= omega/k; // Velocity of wave in m/s
// I is proportional to A^2
I = A^2; // Intensity in m^2 (Proportional)
printf(" (8)The velocity of wave is %d m/s \n (9)Intensity is proportional to : %.1f x 10^-4 m^2.",V,I*10^4);
 
