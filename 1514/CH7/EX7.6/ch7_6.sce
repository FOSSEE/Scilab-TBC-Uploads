//chapter 7
//example 7.6
//page 206
clear;
clc ;
//given
fab=5; //common base cutoff frequency in MHz
hfe=50; //common emitter current gain
Cs=100; //load capacitor in pF
Rc1=10; 
Rc2=100; //collector capacitor in Kohm 

//case 1
fae=fab/hfe*10^3; //common emitter cutoff frequency in KHz
//signal frequency
fs1=(1/(2*%pi*Cs*Rc1)*10^6);
if fae<fs1 then
f2=fae;
else 
    f2=fs1;
end
printf('\nupper 3dB point for Rc1 is %d kHz',f2);

//case 2
fs2=(1/(2*%pi*Cs*Rc2)*10^6);
if fae<fs2 then
    f2=fae;
else 
    f2=fs2;
end
printf('\nupper 3dB point for Rc2 is %.1f kHz',f2);
