clc;clear;
//Example 3.14

//given value
T=25;

//from table 3-1
Psat=3.17;//on kPa

//calculations

//Relative Humidity 10%
Pv1=0.1*Psat
//Relative Humidity 80%
Pv2=0.8*Psat
//Relative Humidity 100%
Pv3=1*Psat

// from table 3-1 Tsat at these Pressures are
T1=-8;
T2=21.2;
T3=25;
disp(T1,'With relative humidity 10%the water temp in celcius is');
disp(T2,'With relative humidity 80% the water temp in celcius is');
disp(T3,'With relative humidity 100% the water temp in celcius is')
