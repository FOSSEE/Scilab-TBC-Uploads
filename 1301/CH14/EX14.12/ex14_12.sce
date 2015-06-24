clc;
K=2*10^-7;        //constant in N/A square
N=1000;           //number of turns
B=2.5*10^-5;      //field in Tesla
l=0.2;              //length in m
I=(B*l)/(2*%pi*K*N);       //calculating magnitude of field
disp(I,"Current in Ampere = ");    //displaying result
