// to calculate pressure of air at the nozzle
clc
R=1e-3 // radius in meter
sigma= 72.7e-3// N/m
p=(2*sigma)/R
mprintf('\n Excess pressure p= %f N/m2',p)
