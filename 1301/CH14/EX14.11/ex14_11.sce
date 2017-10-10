clc;
K=2*10^-7;        //constant in N/A square
N=100;           //number of turns
I=4;            //current in Ampere
r=5*10^-2;              //radius in m
B=(%pi*K*I*N)/r;       //calculating magnitude of field
disp(B,"Magnitude of field in Tesla = ");    //displaying result