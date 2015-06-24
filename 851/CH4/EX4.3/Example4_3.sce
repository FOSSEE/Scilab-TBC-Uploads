//clear//
//Caption:Equalizer to compensate Aperture effect
//Example4.3:Equalizer to Compensate for aperture effect
clc;
close;
T_Ts = 0.01:0.01:0.6;
//E = 1/(sinc_new(0.5*T_Ts));
E(1) =1;
for i = 2:length(T_Ts)
  E(i) = ((%pi/2)*T_Ts(i))/(sin((%pi/2)*T_Ts(i)));
end
a =gca();
a.data_bounds = [0,0.8;0.8,1.2];
plot2d(T_Ts,E,5)
xlabel('Duty cycle T/Ts')
ylabel('1/sinc(0.5(T/Ts))')
title('Figure 4.16 Normalized equalization (to compensate for aperture effect) plotted versus T/Ts')
