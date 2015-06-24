//Example 5.12.3: amplitude of the first three lower order harmonis
clc;
clear;
close;
//given data :
v=200;//in volts
n=[(1/3);(1/5);(1/7)];//
for i=1:3
    vn(i)=((4*v*n(i))/(sqrt(2)*%pi));//
end
disp(round(vn(1)),"Rms value of third harmonic component of output voltage in volts is")
disp(round(vn(2)),"Rms value of fifth harmonic component of output voltage in volts is")
disp((vn(3)),"Rms value of seventh harmonic component of output voltage in volts is")
