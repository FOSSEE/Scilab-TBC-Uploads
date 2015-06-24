clc
d = 38 // diameter of bar in mm
l = 25 // length of bar in mm
p = 8.6 // density gm/cm^3
g = 9.81 // acceleration due to gravity in m/s^2
w = (%pi*d^2*l*p*g)/(4*10^6) // weight of material in N
mc = w*1.625 // material cost in Rs
lc = (2*90)/60 // labour cost in Rs
fo = 0.5*lc // factory overheads in Rs
fc = mc + lc + fo // factory cost in Rs
printf("\n factory cost = Rs %0.2f ", fc )
// Answers vary due to round off error
