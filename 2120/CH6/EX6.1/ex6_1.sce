//Exa 6.1
clc;
clear;
close;
//Given data
// In first case     (T1-T2)/T1=1/6           or    T1= 1.2*T2                  (i)
// In seond case  (T1-(T2-62))/T1= 2/6  or   2*T1 -3*(T2-62)=0      (ii)
// From eq (i) and (ii)
T2= 186/0.6;// in K
T1= 1.2*T2;// in K
disp(T2-273,"Temperature of the source in °C is : ")
disp(T1-273,"Temperature of the sink in °C is : ")
