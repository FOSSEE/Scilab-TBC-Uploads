clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 8

clear; clc; close; // Clear the work space and console.
//
// Given data
VLL       = 240.0000;
f         =  60.0000;
// Load 1 
P1        =  30.00000;
pf1       =   0.60000;
// Load 2 
Q2        =  45.00000;
pf2       =   0.80000;
// Calculations Complex, Real and Reactive Power of Load 1 
S1 = P1/pf1;
Q1 = S1 * sqrt(1-((pf1)^2));
// Calculations Complex, Real and Reactive Power of Load 2 
S2 = Q2/sqrt(1-((pf2)^2));
P2 = S2 * pf2;
// Calculations Total Complex, Real and Reactive Power of Load 
ST = complex(P1,Q1) + complex(P2,Q2);
PT = real(ST);
QT = imag(ST);
ST_mag = norm(ST);
ST_angle = atand(QT,PT)
// Calculations Line Current For Load 1 
IL1 = (50.0000 * 1000)/(sqrt(3)*240*1000);
Ia1_mag = IL1;
Ia1_angle = acosd(pf1);
// Calculations Line Current For Load 2
IL2 = (75.0000 * 1000)/(sqrt(3)*240*1000);
Ia2_mag = IL2;
Ia2_angle = acosd(pf2);
// Calculations Line Current for Load 
Ia_tot_real = (Ia1_mag * cosd(Ia1_angle))+(Ia2_mag * cosd(Ia2_angle));
Ia_tot_imag = (Ia1_mag * sind(Ia1_angle))+(Ia2_mag * sind(Ia2_angle));
Ia_tot_mag  = norm(complex(Ia_tot_real,Ia_tot_imag))
Ia_tot_angle = atand(Ia_tot_imag,Ia_tot_real)
// Calculations KVAR for Three Capacitors and Each Capacitor  
angle_old = ST_angle;
angle_new = acosd(0.9000);
Qc = PT * (tand(angle_old)-tand(angle_new));
Qc1 = Qc/3;
// Calculations Capacitance Each Capacitor
C = Qc1/((2*(%pi)*f)*(VLL)^2)

//
disp("Example 12-8 Solution : "); 
disp("a. Complex, Real and Reactive Power of Total Load : ");
disp("Complex, Real and Reactive Power of Load 1: ");
printf(" \n S1         = Complex Power of Load 1                   = %.3f KVA",S1)
printf(" \n P1         = Real Power of Load 1                      = %.3f KW",P1)
printf(" \n Q1         = Reactive Power of Load 1                  = %.3f KVAR",Q1)
disp("")
disp("Complex, Real and Reactive Power of Load 2: ");
printf(" \n S2         = Complex Power of Load 2                   = %.3f KVA",S2)
printf(" \n P2         = Real Power of Load 2                      = %.3f KW",P2)
printf(" \n Q2         = Reactive Power of Load 2                  = %.3f KVAR",Q2)
disp("")
disp("Complex, Real and Reactive Power of Total Load : ");
printf(" \n ST_mag     = Magnitude of Complex Power of Total Load  = %.3f KVA",ST_mag)
printf(" \n ST_angle   = Angle of Complex Power of Total Load      = %.3f Degree",ST_angle)
printf(" \n PT         = Real Power of Total Load                  = %.3f KW",PT)
printf(" \n QT         = Reactive Power of Total Load              = %.3f KVAR",QT)
disp("")
disp("b. Line Current for Total Load : ");
disp("Line Current for Load 1: ");
printf(" \n Ia1_mag    = Magnitude of Line Current For Load 1      = %.3f mA",Ia1_mag*1000)
printf(" \n Ia1_angle  = Angle of Line Current For Load 1          = %.3f Degree",-Ia1_angle)
disp("")
disp("Line Current for Load 2: ");
printf(" \n Ia2_mag    = Magnitude of Line Current For Load 2      = %.3f mA",Ia2_mag*1000)
printf(" \n Ia2_angle  = Angle of Line Current For Load 2          = %.3f Degree",-Ia2_angle)
disp("")
disp("Total Line Current : ");
printf(" \n Ia2_mag    = Magnitude of Total Line Current For Load  = %.3f mA",Ia_tot_mag*1000)
printf(" \n Ia2_angle  = Angle of Total Line Current For Load      = %.3f Degree",-Ia_tot_angle)
disp("")
disp("c. Capacitance of Capasitor for Improving Power Factor : ");
printf(" \n Qc    = KVAR for Three Capacitors                      = %.3f KVAR",Qc)
printf(" \n Qc1   = KVAR for Each Capacitor                        = %.3f KVAR",Qc1)
printf(" \n C     = Capacitance of Capacitor                       = %.3f PF",C*1D+09)
