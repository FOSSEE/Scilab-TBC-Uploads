//Section-14,Example-5,Page no.-PC.8
//To calculate the distance from the HCL inlet end of the tube at which NH4Cl will first appear.
clc;
//r_1=x
//r_2=2-x
//r=r_1/r_2
M_2=17
M_1=36.5
r=sqrt(M_2/M_1)
//comparing we have, x/(2-x)=0.68
x=(0.68*2)/1.68
disp(x,'Required distance(m)')

