//ex16.5
V=15;
C=0.0047*10^-6;
R3=10*10^3;
R4=R3;
R2=10*10^3;
R1=68*10^3;
R_i=100*10^3;
V_G=R4*V/(R3+R4);    //gate voltage at which PUT turns on
V_p=V_G;    //neglecting 0.7V, this the peak voltage of sawtooth wave
disp(V_p,'neglecting 0.7V, this the peak voltage of sawtooth wave in volts')
V_F=1;    //minimum peak value of sawtooth wave
V_pp=V_p-V_F;
disp(V_pp,'peak to peak amplitude of the sawtooth wave in volts')
V_IN=-V*R2/(R1+R2);
f=(abs(V_IN)/(R_i*C))*(1/(V_pp));
disp(f,'frequency of the sawtooth wave')
T=1/f;
xtitle('Sawtooth voltage controlled oscillator')
x=[];
for t=0:1*10^-5:4*10^-3 
   tcor = t- floor(t/T)*T;
           x_temp = (V_pp/T)*tcor + 1;
         x = [x, x_temp];
     end;
     t=0:1*10^-5:4*10^-3
     plot(t,x)