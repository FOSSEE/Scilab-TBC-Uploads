// Calculating the upper and lower limits of current during starting and resistance of each section
clc;
disp('Example 18.1, Page No. = 18.3')
// Given Data
// d.c. shunt motor
P = 37;// Power rating (in kW)
V = 250;// Voltage rating (in Volts)
e = 0.84;// Full load efficiency
rm = 0.2;// Armature circuit resistance (in ohm)
ns = 8;// Number of studs
// Maximum torque is 150% of full load torque
// Calculation of the upper and lower limits of current during starting
Ifl = P*10^(3)/(V*e);// Full load current (in Ampere)
I1 = 1.5*Ifl;// Maximum current (in Ampere).  Since torque is proportional to current
n = ns-1;// Number of sections
alpha = (rm*I1/V)^(1/n);
I2 = alpha*I1;// Lower limit of current (in Ampere)
disp(I1,'Upper limit of current (Ampere) =');
disp(I2,'Lower limit of current (Ampere) =');
// Calculation of the resistance of each section
R1 = V/I1;// Total resistance at starting (in ohm)
r1 = (1-alpha)*R1;
r2 = alpha*r1;
r3 = alpha*r2;
r4 = alpha*r3;
r5 = alpha*r4;
r6 = alpha*r5;
r7 = alpha*r6;
disp(R1,'Total resistance at starting (ohm) =');
disp('Resistance of each section')
disp(r1,'r1 (ohm) =');
disp(r2,'r2 (ohm) =');
disp(r3,'r3 (ohm) =');
disp(r4,'r4 (ohm) =');
disp(r5,'r5 (ohm) =');
disp(r6,'r6 (ohm) =');
disp(r7,'r7 (ohm) =');
//in book answers are I1 = 264 ampere, I2 = 211 ampere, R1 = 0.947 ohm, r1 = 0.189 ohm,, r2 = 0.151 ohm, r3 = 0.121 ohm, r4 = 0.097 ohm, r5 = 0.077 ohm, r6 = 0.062 ohm, r7 = 0.050 ohm.    The answers vary due to round off error
