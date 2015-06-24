clc
c_t = 8 // tool change time in min.
r_t = 5 // tool re-grind time in min.
mr_c = 5 // machine running cost per hour
d = 30 // total depreciation per re-grind in paisa
n = 0.25 // exponent
c = 150 // constant
c_c = mr_c*c_t/60 // total change cost in Rs
r_c = mr_c*r_t/60 // regrind cost in Rs
ct = c_c+r_c+d/100 // tooling cost in Rs
cm = mr_c/60 // machining cost in Rs
v = c*((cm*n)/(ct*(1-n)))^n // cutting speed in m/min.
printf("\n Cutting speed = %0.1f m/min." , v) 
