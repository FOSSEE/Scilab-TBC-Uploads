clc;
delt=80-20;     //change in temp in celcius
m=3;        //mass in lb
c=4185;      //specific heat in J/kg.celcius
Q=m*c*delt;    //calculating heat required
disp(Q,"Heat required in Joule = ");  //displaying result