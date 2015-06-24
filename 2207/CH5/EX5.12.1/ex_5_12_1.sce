//Example 5.12.1: rms output voltage,output power, average and peak currents,peak reverse blocking voltage,THD,DF,harmonic factor and distortion factor of the lowest order harmonic
clc;
clear;
close;
disp("part (a)")
format('v',5)
v=24;//in volts
V=v;//
r=3;//in ohms
v1rms=(2*v)/(sqrt(2)*%pi);//in volts
disp(v1rms,"rms output voltage at fundamental frequency in volts is")
disp("part (b)")
po=((v/2)^2)/r;//in watts
disp(po,"output power in Watt is")
disp("part (c)")
itav=(v/(4*r));//in amperes
itp=((v/2)/r);//in amperes
disp(itav,"average transistor current in amperes is")
disp(itp,"transistor peak current in amperes is")
disp("part (d)")
vbr=2*(v/2);//in volts
disp(vbr,"peak reverse bloacking voltage in volts is")
disp("part (e)")
vo=v/2;//
THD1=((vo)^2-(v1rms)^2)^(1/2);//in volts
THD=THD1/v1rms;//
disp(THD*100,"Total Hramonic distortion in percentage is")
disp("part (f)")
n=[0;0;(1/3);0;(1/5);0;(1/7);0;(1/9);0;(1/11);0;(1/13)];//
for i=[3;5;7;9;11;13]
    v(i)=(2*V)*((n(i)))/(%pi*sqrt(2));//
end
x=sqrt((((v(3))/(3^2))^2)+(((v(5))/(5^2))^2)+(((v(7))/(7^2))^2)+(((v(9))/(9^2))^2)+(((v(11))/(11^2))^2)+(((v(13))/(13^2))^2));//
DF=x/v1rms;//
disp(DF*100,"distortion factor in percentage is")
//distortion factor is calculated wrong in the textbook
disp("part (g)")
HF3=v(3)/v1rms;//
DF3=((v(3))/(3^2))/v1rms
disp(HF3*100,"HF for the third harmonic in percentage is")
disp(DF3*100,"DF the third harmonic in percentage is")
