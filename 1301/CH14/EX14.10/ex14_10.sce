clc;
K=2*10^-7;        //constant in N/A square
I=8;            //current in Ampere
s=5*10^-2;              //distance in m
B=(K*I)/s;       //calculating magnitude of field
disp(B,"Magnitude of field in Tesla = ");    //displaying result
disp(2*B,"Total field in Tesla = ");   //displaying result