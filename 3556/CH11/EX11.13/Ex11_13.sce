clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 13

clear; clc; close; 
//
// Given data
Z_line         = complex(4,2)
Z_load         = complex(15,-10)
S_load     =  12.0000;                     
pf_load    =   0.8560;                     
Vrms_mag   = 220.0000;                     
Vrms_angle =   0.0000;
Vrms = complex(Vrms_mag*cosd(Vrms_angle),Vrms_mag*sind(Vrms_angle))
// Calculations Real Power and Reactive Power Absorbed by The Source 
Z_total = Z_line + Z_load;
I_total = Vrms/Z_total;
I_total_mag = norm(I_total);
I_total_angle = atand(imag(I_total),real(I_total));
S_source = Vrms*conj(I_total);
P_source = real(S_source);
Q_source = imag(S_source);
// Calculations Real Power and Reactive Power Absorbed by The Line
V_line = Z_line * I_total; 
S_line = V_line * conj(I_total);
P_line = real(S_line);
Q_line = imag(S_line);
// Calculations Real Power and Reactive Power Absorbed by The Load
V_load = Z_load * I_total; 
S_load = V_load * conj(I_total);
P_load = real(S_load);
Q_load = imag(S_load);
//
disp("Example 11-12 Solution : ");
disp("a. Real Power and Reactive Power Absorbed By The Source : ");
printf(" \n P_Source       = Real Power Absorbed By The Source             = %.3f KW",P_source)
printf(" \n Q_Source       = Reactive Power Absorbed By The Source         = %.3f Kvar",Q_source)
disp("")
disp("b. Real Power and Reactive Power Absorbed By The Line : ");
printf(" \n P_line         = Real Power Absorbed By The Line               = %.3f KW",P_line)
printf(" \n Q_line         = Reactive Power Absorbed By Line               = %.3f Kvar",Q_line)
disp("")
disp("c. Real Power and Reactive Power Absorbed By The Load : ");
printf(" \n P_load         = Real Power Absorbed By The Load               = %.3f KW",P_load)
printf(" \n Q_load         = Reactive Power Absorbed By Load               = %.3f Kvar",Q_load)
