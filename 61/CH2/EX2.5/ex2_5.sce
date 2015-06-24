//Ex2.5
//Assume frequency of input to be 1Hz
f=1;
T=1/f;
V_p_pri=100;    //Peak voltage across primary winding
n=1/2;           //tun ratio is 2:1
V_p_sec=n*V_p_pri;
V_sec=V_p_sec/2;    //voltage across each secondary is half the total voltage
clf();
subplot(121)
xtitle('voltage across each secondary')
t=0:0.0005:2;
x=V_sec*sin(2*%pi*f.*t);
plot(t,x)
subplot(122)
xtitle('voltage across load')
//let n be double the number of cycles of output shown in graph
for n=0:1:4
    t=n.*T/2:0.0005:(n+1).*(T/2);
V_pout=V_sec-0.7;
V=V_pout*sin(2*%pi*f.*t)
a=bool2s(V*(-1)^n>0);
y=(-1)^n.*a.*V;
plot(t,y)
end
disp(V_pout,'full wave rectifier output voltage')
PIV=2*V_pout+0.7;
disp(PIV,'PIV in volts')
