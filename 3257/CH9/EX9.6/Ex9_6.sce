
//Machining time in electrical discharge machining vs drilling
clc
d = 12.5 // hole diameter in mm
I = 100 // current density in A/mm^2 for EDM
I1 = 5 // current density in A/mm^2 for ECM
h = 20 // depth in mm
C = 1.5 
neeta = 0.92 // efficiency 
depth = 15 // depth of hole in mm
N = 325 // rotation in rpm
f1 = 0.15 // feed in mm/rev
T_m = 1873.15 // melting point of titanium in K
t_m = 1373.15 // melting point of electrode in K
printf("\n Example 9.6")
printf("\n\n Part A:")
T_w = T_m -273.15 // melting point in Celsius
mrr = 4e4*I*T_w^(-1.23)
v = %pi/4*d^2*h
t = v/mrr // time by EDM
f = C*I1*neeta // feed rate
T_e = depth/f // time by electrochemical machining
f_rate = N*f1
T_d = depth/f_rate// time by drilling
t_edm_ecm = t/T_e // Time ratio between EDM and ECM
t_edm_d = t/T_d // Time ratio between EDM and drilling
printf("\n Machining time for EDM is %.1f min.",t)
printf("\n This time is %.2f time of that for ECM. ",t_edm_ecm) // Answer in book is 2.35 time
printf("\n This time is %.2f time of that for drilling. ",t_edm_d) // Answer in book is 11.3 times
printf("\n Part B:")
t_t = t_m - 273.15
W_t = 1.1e4*I*t_t^(-2.38)
printf("\n Wear rate of electrode is %.3f mm^3/min.",W_t)

