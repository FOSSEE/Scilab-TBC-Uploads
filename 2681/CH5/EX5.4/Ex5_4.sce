//frequency of air dielectric and highest frequency
//given
clc
n=1//lowest mode
d=2.6//mm
D=0.8//mm
V0=3d+11//mm/s//ERROR
lem_c=(%pi/(2*n))*(d+D)
fc=V0/lem_c//hertz//ERROR
disp(fc,'the frequency is as follows:')//Hz
//ERROR in the calculation  in the book as value of V0=3d+10
