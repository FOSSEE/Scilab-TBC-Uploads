//ex13.1
R2=1*10^3;
R1=8.2*10^3;
V=15;
V_REF=R2*V/(R1+R2);
disp(V_REF,'V_REF in volts')
V_max=12;    //maximum output level of op-amp
V_min=-12;    //minimum output voltage of comparator
f=1;    //assume frequency of input wave to be 1 hertz
t=0:0.001:3;
V_in=5*sin(2*%pi*f.*t)
clf();
subplot(121)
xtitle('Input to comparator-1')
plot(t,V_in)
subplot(122)
xtitle('Output of Comparator-1')
a=bool2s(V_in>=V_REF)
b=~a;
y=V_max*a+V_min*b;
plot(t,y)
disp(V_max,'max output voltage in volts')
disp(V_min,'min output voltage in volts')