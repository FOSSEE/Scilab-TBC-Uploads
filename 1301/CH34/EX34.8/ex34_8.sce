clc;
m=1;      //mass in kg
delt=80;  //change in temperature in celcius
c=1;      //specific heat in kcal/kg.celcius
Q=m*c*delt;    //calculating heat
disp(Q,"Heat required in kcal = ");  //displaying result
t=Q/9.4;     //calculating time
disp(t,"Time required in second = "); //displaying result