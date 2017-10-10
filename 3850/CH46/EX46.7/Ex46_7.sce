
//To Calculate the Temperature of Deutrons for a specific Average Kinetic Energy
//Example 46.7

clear;

clc;

e=1.6*10^-19;//Charge on an electron in Coloumbs

E=9*10^9;//Value of Constant (1/(4*%pi*e0)) in N-m^2/C^2

d=2*10^-15;//Closest Seperation between 2 deutrons in metres

K=e^2*E/(2*d);//Initial Kinetic Energy of each deuteron

printf("Kinetic Energy of each deuteron so that the closest seprations between them becomes 2 fm = %.1f*10^-14 J",K*10^14);

k=1.38*10^-23;//Boltzmann Constant

T=K/(k*1.5);//Temperature needed for the deutrons to have the Average Kinetic Energy

printf("\n Temperature needed for the deutrons to have the Average Kinetic Energy = %.1f*10^9 K",T*10^-9);
