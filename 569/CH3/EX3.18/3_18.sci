// Calculate apparent resistance, actual resistance and error
clc;
Et=100;
It=5*10^-3;
Rt=Et/It;
disp(Rt,'apparent value of resistance (ohm)=')
Rv=1000*150;
Rx=Rt*Rv/(Rv-Rt);
disp(Rx,'true value of resistance(ohm)')
Er_percentage=[(Rt-Rx)/Rx]*100;
disp(Er_percentage,'percentage error=')