// Example 8.1 
// Compuatation of error probability if the receiver is (a) a balanced homodyne or (b) a balanced heterodyne
// Page no. 354

clc;
clear;
close;

// Given data
Po=5;                  // Lunch peak power
fl=50;                 // Fiber loss
G=30;                  // Preamplifier Gain 
f=10*10^9;
n=1.5;
h=6.63*10^-34;         // Planck constant
c=3*10^8;              // Velocity of light
lambda=1550*10^-9;
q=1.6*10^-19;           // Electron charge
R=0.9;

// Signal calculation
Pr=Po-fl+G;
Pr=10^(Pr/10)*10^-3;

Tb=1/(f);
E=Pr*Tb;
f1=c/lambda;
G=10^(G/10);
r=n*h*f1*(G-1);
//rs=q*I;
N=r+(q/(2*R));
Nh=r/2+(q/(2*R));

// Error probability
// (a) For a balanced homodyne receiver with PSK signal
Ps=1/2*erfc(sqrt(E/N));
E1=E/2;
// If the signal is OOK
Pso=1/2*erfc(sqrt(E1/(2*N)));

//(b) For a balanced heterodyne receiver with PSK signal
Pb=1/2*erfc(sqrt(E/(2*Nh)));
//E1=E/2;
// If the signal is OOK
Pbo=1/2*erfc(sqrt(E1/(4*Nh)));

//Displaying the result in command window
printf("\n For a balanced homodyne receiver with PSK signal = %0.2f X 10^-9 ",Ps*10^9);

printf("\n For a balanced homodyne receiver with PSK signal If the signal is OOK, = %0.2f X 10^-3",Pso*10^3);
printf("\n For a balanced heterodyne receiver with PSK signal = %0.3f X 10^-9",Pb*10^9);
printf("\n For a balanced heterodyne receiver with PSK signal If the signal is OOK,= %0.2f X 10^-3",Pbo*10^3);

// The answer vary due to round off error


