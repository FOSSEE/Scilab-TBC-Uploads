clc;funcprot(0);//Example 9.19
//Initilisation of Variables
T1=1000;....//Temparature of large plate 1 in K
T2=800;....//Temparature of large plate 2 in K
e1=0.5;....//emissivity of large plate 1
e2=0.8;....//emissivity of large plate 2
es1=0.5;....//emissivity of radiation sheild facing hot plate
es2=0.04;....//emissivity of facing cool plate
R=5.67*10^-8;.....//Stefens boltsman constant
F1s=1;....//shape factor of the plates
Fs2=1;....//shape factor of the plates
//calculations
Q1=(R*(T1^4-T2^4))/((1/e1)+(1/e2)-1);.....//Heat transfer rate without sheild in W/m^2
Q2=(R*(T1^4-T2^4))/(((1-e1)/e1)+(1/F1s)+((1-es1)/es1)+((1-es2)/es2)+(1/Fs2)+((1-e2)/e2));....//Heat transfer with shield in W/m^2
disp(Q1,"Heat transfer rate without sheild in W/m^2:")
disp(Q2,"Heat transfer rate without sheild in W/m^2:")
