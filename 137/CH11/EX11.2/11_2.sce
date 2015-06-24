//page 500
//example 11.2 (assuming SI units)
//given signal is Sx=(N/2)*rect(w/4(%pi)B)
clc;
N=1;B=1;
T=input("enter the value of T");
Rx=(N*B)*(sinc(2*(%pi)*B*T));
disp(+'Watt',Rx,"mean square value of the signal is");