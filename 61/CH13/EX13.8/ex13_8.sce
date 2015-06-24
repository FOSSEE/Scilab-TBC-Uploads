//ex13.8
R_i=10*10^3;
C=0.01*10^-6;
V_in=2.5-(-2.5);
PW=100*10^-6;    //pulse width
T=2*PW;
A=2.5;
op_change_cap_charge=-V_in/(R_i*C);
op_change_cap_discharge=V_in/(R_i*C);
disp(op_change_cap_charge,'rate of change of output voltage with respect to time when capacitor is charging (in Volts per sec)')
disp(op_change_cap_discharge,'rate of change of output voltage with respect to time when capacitor is discharging (in Volts per sec)')
del_V_OUT=op_change_cap_discharge*PW;
disp(-del_V_OUT,'when input is positive, the slope is negative, when input is negative , the slope is negative. So, the output is a triangular wave varying from zero to')
subplot(121)
xtitle('input voltage of op-amp differentiator')
t=0:10^-7:2*T;
a=bool2s(t>=T/2 & t<=T)
b=bool2s(t>=1.5*T & t<=2*T)
a=bool2s(a|b)
b=~a;
y=-A*b+A*a;
plot(t,y)
subplot(122)
xtitle('output voltage of op-amp diferentiator')
x=[];
A=del_V_OUT;
for t=0:10^-7:2*T 
   tcor = t- floor(t/T)*T;
    if tcor >= 0 & tcor < (T/2) then
         x_temp = -A +(2*A/T)*tcor;
      end; 
      if tcor >= (T/2) & tcor <T then
           x_temp = A - (2*A/T)*tcor;
        end
         x = [x, x_temp];
     end;
t=0:10^-7:2*T;
plot(t,x)
