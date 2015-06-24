// Machining time in electrochemical machining vs. drilling

clc
d = 12 // hole diameter in mm
I = 5 // current density in A/mm^2
C = 1.5 // material constant in mm^3/A-min
neeta = 0.92 // efficiency 
depth = 15 // depth of hole in mm
N = 325 // rotation in rpm
f1 = 0.15 // feed in mm/rev

printf("\n Example 9.5")
f = C*I*neeta // feed rate
T_e = depth/f // time by electrochemical machining
f_rate = N*f1
T_d = depth/f_rate// time by drilling
t_ratio = T_d/T_e
printf("\n Machining time in electrochemical is %.2f min.",T_e)
printf("\n Machining time in drilling is %.2f min.",T_d) // answer in boook is 0.030 
printf("\n Machining time in drilling is %d %% of ECM. ",t_ratio*100)

