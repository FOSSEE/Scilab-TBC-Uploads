//ex13.9
R_f=2.2*10^3;
C=0.001*10^-6;
Vc=5-(-5);
A=5;
time_const=R_f*C;
T=10*10^-6;
t=T/2;
slope=Vc/t;
V_out=slope*time_const;    //V_out is negative when input is positive and V_out is positive when input is negative
disp(V_out,'output voltage in volts is a square wave with peak voltages positive and negative of')
subplot(121)
xtitle('input voltage for integrator op-amp')
x=[];
for t=0:10^-8:2*T
   tcor = t- floor(t/T)*T;
    if tcor >= 0 & tcor < (T/2) then
         x_temp = -A +(4*A/T)*tcor;
      end; 
      if tcor >= (T/2) & tcor <T then
           x_temp = 3*A - (4*A/T)*tcor;
        end
         x = [x, x_temp];
     end;
     t=0:10^-8:2*T;
     plot(t,x)
subplot(122)
xtitle('output voltage of differentiator op-amp')
a=bool2s(t>=T/2 & t<=T)
b=bool2s(t>=1.5*T & t<=2*T)
a=bool2s(a|b)
b=~a;
y=V_out*a-V_out*b;
plot(t,y)
disp(V_out,'max output voltage in volts')
disp(-V_out,'min output voltage in volts')