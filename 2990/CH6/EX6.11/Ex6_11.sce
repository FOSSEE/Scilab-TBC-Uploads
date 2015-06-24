
clc; funcprot(0);
// Initialization of Variable
L=25.0e3;//length in m
k=0.23e4;//l/s=w/s;
pl=0.6;//longitudinal lap
pw=0.3;//side lap
W=20.0e3;//width in m
//calculation
N=((L/((1-pl)*k)+1))*((W/((1-pw)*k)+1)+1);
disp(N,"no. of photographs taken");
clear()
