clc;
//Example 12.3
//Page No 506

disp("Given: An RG-59A coaxial cable, with L=0.118uH/ft and C=21pF/ft");

//Solution

L=0.118*10^-6;
C=21*10^-12;

disp("Substituting into Equation 12-15(refer pgno506) give us,"); 

Z0=sqrt((L/C));

disp('ohm',round(Z0),"Z0 = ");
