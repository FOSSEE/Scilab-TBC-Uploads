clc;
K=2*10^-7;        //constant in N/A square
I=100;            //current in Ampere
s=5;              //distance in m
B=(K*I)/s;       //calculating magnitude of field
disp(B,"Magnitude of field in Tesla = ");    //displaying result