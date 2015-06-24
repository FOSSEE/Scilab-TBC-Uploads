clc;
i1=3;     //current in Ampere
n2=500;   //no. of turns
n1=100;   //no. of turns
v1=120;   //potential diff in volt
v2=(n2*v1)/n1;     //calculating v2
i2=(n1*i1)/n2;     //calculating i2
disp(v2,"Voltage in volt = ");   //diplaying result
disp(i2,"Current in Ampere = ");  //diplaying result