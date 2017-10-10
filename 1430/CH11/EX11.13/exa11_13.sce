// Example 11.13
// Op-Amp Circuit for a Lowpass Filter
f_co=15.9*10^3; // Hertz
Q3=0.618;
Q5=1.618;
K=80; // Overall gain
// Approximately equal distribution of total gain
K1=5;
K3=4;
K5=4; 
R_mu=1000; // assume
R_F1=(5-1)*R_mu; // VAlues of feedback Resistors
R_F3=(4-1)*R_mu;
R_F5=R_F3;
C=10^-9; // Appropriate choice
R=1/(2*%pi*f_co*C); // For 1st order stage
// For 2nd stage
r=R;
K_i=4;
// Thus the resistor for the stage with Q3
R1=2*Q3*r/(1+sqrt(4*Q3^2*(K_i-2)+1));
R2=r^2/R1;
// Thus the resistor for the stage with Q5
R3=2*Q5*r/(1+sqrt(4*Q5^2*(K_i-2)+1));
R4=r^2/R3;
disp(C,"Capacitor for all the stages(Farad)=")
disp(R,"Resistor for the 1st order stage(Ohms)=")
disp(R1,"Resistor for the 2nd order stage with Q3(Ohms)=")
disp(R2,"Resistor for the 2nd order stage with Q3(Ohms)=")
disp(R3,"Resistor for the 3rd order stage with Q5(Ohms)=")
disp(R4,"Resistor for the 3rd order stage with Q5(Ohms)=")
