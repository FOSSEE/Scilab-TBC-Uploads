//Example 5.12.4: amplitude of the first three lower order harmonis
clc;
clear;
close;
//given data :
v=200;//in volts
n=[(1/3);(1/5);(1/7)];//
vo1rms=(2*v)/(sqrt(2)*%pi);//in volts
for i=1:3
    vn(i)=((2*v*n(i))/(sqrt(2)*%pi));//
end
disp(round(vo1rms),"Vo1rms for half bridge circuit in volts is")
disp(round(vn(1)),"Rms value of third harmonic component for half bridge circuit  in volts is")
disp(round(vn(2)),"Rms value of fifth harmonic component for half bridge circuit in volts is")
disp((vn(3)),"Rms value of seventh harmonic component for half bridge circuite in volts is")
disp("for bridge inverter")
vo1rms1=(4*v)/(sqrt(2)*%pi);//in volts
for i=1:3
    vn1(i)=((4*v*n(i))/(sqrt(2)*%pi));//
end
disp(round(vo1rms1),"Vo1rms for half bridge circuit in volts is")
disp(round(vn1(1)),"Rms value of third harmonic component for bridge inverter circuit  in volts is")
disp(round(vn1(2)),"Rms value of fifth harmonic component for half bridge inverter circuit in volts is")
disp((vn1(3)),"Rms value of seventh harmonic component for half bridge inverter circuite in volts is")
