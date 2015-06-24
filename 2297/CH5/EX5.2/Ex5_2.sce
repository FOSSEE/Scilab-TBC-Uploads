// Example 5.2 : resistance
clc;
clear;
// given :
format('v',9)
fsf=20;//full scale deflection current in mA
v=200;//voltage in mV
ri=v/fsf;//resistance in ohms
x=199.98;//current in amperes
rsh=(v*10^-3)/x;//ohms
fs2=1000;//volts
trv=fs2/(fsf*10^-3);//ohms
rse=trv-ri;//reqquired resistance in ohms
disp(rse,"total resistance of the voltmeter is,(ohm)=")
//in the text book approximately value of resistance is taken as 50000 ohm
