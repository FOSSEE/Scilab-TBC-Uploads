//ex13.3
R1=100*10^3;
R2=47*10^3;
V_R1=4.7+0.7;    //one zener is always forward biased with forward voltage 0.7V 
//V_R1 can be positive or negative
I_R1=V_R1/R1;    
I_R2=I_R1;
V_R2=R2*I_R2;
V_out=V_R1+V_R2;    //positive or negative
V_UTP=R2*V_out/(R1+R2);
V_LTP=-V_out*R2/(R1+R2);
f=1;    //assume frequency of input as 1 Hertz
t=0:0.001:1;
T=1/f;
V_in=5*sin(2*%pi*f.*t)
subplot(121)
xtitle('Input to comparator-2')
plot(t,V_in)
subplot(122)
xtitle('Output of Comparator-2')
t1=(1/(2*%pi*f))*asin((V_UTP/5))
a=bool2s(t<t1)
b=bool2s(t>((T/2)+t1))
a=bool2s(a|b)
b=~a;
y=V_out*a-V_out*b;
plot(t,y)
disp(V_out,'max output voltage in volts')
disp(-V_out,'min output voltage in volts')