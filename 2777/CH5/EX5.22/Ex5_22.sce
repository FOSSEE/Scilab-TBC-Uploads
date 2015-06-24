
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.22

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Wsc = 1000;                    // Power at Blocked Rotor test in Watts
Vsc = 56;                      // Voltage at Blocked Rotor test in Volts
Isc = 18;                      // Current at Blocked Rotor test in Amphere
Woc = 52;                      // Power at No-load test in Watts
Voc = 220;                     // Voltage at No-load test in Volts
Ioc = 2.6;                     // Current at No-load test in Amphere 
m = 3;                         // Total Number of phase in Induction Motor
p = 4;                         // Total number of Poles of Induction Motor
V = 220;                       // Operating voltage of the Induction motor in Volts
f = 50;                        // Frequency in Hertz
s = 0.05;                      // Slip
R = 0.65;                      // Per phase stator Resistance in Ohms


// CALCULATIONS

Vph = Voc/sqrt(3);                               // Per phase Voltage in Volts
Wo = Woc/m;                                      // Per phase No-load loss in Watts
theta_0 = acosd(Wo/(Voc*Ioc*sqrt(3)));           // No-load power factor angle in degree
VSC = Vsc/sqrt(3);                               // Per phase locked rotor Voltage in Volts
WSC = Wsc/m;                                     // Per phase locked rotor loss in Watts
theta_sc = acosd(WSC/(VSC*Isc));                 // No-load power factor angle in degree
ISC = Isc*(Voc/Vsc);                             // locked rotor current at full Voltage in Amphere
Re = WSC/Isc^2;                                  // Resistance in Ohms
R1 = R*1.1;                                      // Per phase AC stator Resistance in Ohms
R_2 = Re - R1;                                   // Per phase rotor Resistance in Ohms
Zsc = VSC/Isc;                                   // Per phase impedance in Ohms
Xs = sqrt((Zsc^2)-(Re^2));                       // Leakage Reactance in Ohms
I_2 = (Voc/sqrt(3))/sqrt((R1+(R_2/s))^2+(Xs^2)); // Current in Amphere
pf = cosd(atand(Xs/(R1+(R_2/s))));               // Power Factor
Ws = 2*%pi*((120*f/p)*(1/60));                   // Rotational Speed in Radians per Seconds
Pg = (3*(abs(I_2)^2*R_2))/s;                     // 3-phase air gap power or Rotor intake Power in Watts
T = Pg/Ws;                                       // Torque in Newton-Meter
// CALCULATIONS OR DATA OBTAINED FROM CIRCLE DIAGRAM FIGURE 5.35 and PAGE NO:-303
OA = 2.60;                                       // Correspounding Current in Amphere at 87' from Y-axis (from Circle diagram)
OE = 70.70;                                      // Correspounding Current in Amphere at 55' from Y-axis (from Circle diagram)
OP = 17.77;                                      // Current in Amphere (from Circle diagram)
OV = Voc/sqrt(3);                                // Phase Voltage in No-load test or value obatined from circle diagram in Volts
PK = 11.6;                                       // Correspounding Value from Circle diagram
JK = 0.8;                                        // Correspounding Value from Circle diagram
PJ = 10.8;                                       // Correspounding Value from Circle diagram
PM = 11.6;                                       // Correspounding Value from Circle diagram
Pir = 3*OV*PK;                                   // Total Rotor intake in Watts
Plr = 3*OV*JK;                                   // Total Rotor loss in Watts
Po = 3*OV*PJ;                                    // Total Mechanical power output in Watts
T_c = (3*OV*PK)/Ws;                              // Total Torque in Newton-Meter
s_c = JK/PK;                                     // Slip obtained from Circle diagram
s_pc = 100*s_c;                                  // Slip in percentage
eta = 100*(PJ/PM);                               // Eifficiency in Percentage


// DISPLAY RESULTS

disp("EXAMPLE : 5.22 : SOLUTION :-");
printf("\n   (a)  Input line current, I2 = %.2f A \n",I_2)
printf("\n   (b)  Power Factor, Pf = %.3f \n",pf)
printf("\n   (c)  Torque, T = %.2f Nm \n",T)
printf(" \n Verification Results from Circle Diagram :-\n");
printf("\n   (a)  Efficency, eta = %.2f Percent \n",eta)
printf("\n   (b)  slip, s = %.3f = %.f percent \n",s_c,s_pc)
printf("\n   (c)  Torque, T = %.2f Nm \n",T_c)
