clear
clc
PAo=3;//atm
R=82.06*10^-6;//m3.atm/mol.k
T=730;//k
W=1000;//kg
FAo=5000;//mol/hr
CAo=PAo/(R*T);
tau=W*CAo/FAo;
i=0;
for t=0:5:120
    i=i+1;
 //Part a
a(i)=1-(8.3125*10^-3)*t;
XA(i)=(tau^2)*a(i)/(1+(tau^2)*a(i));
//Part b
a1(i)=exp(-0.05*t);
XA1(i)=(tau^2)*a1(i)/(1+(tau^2)*a1(i));
//Part c
a2(i)=1/(1+3.325*t);
XA2(i)=(tau^2)*a2(i)/(1+(tau^2)*a2(i));
//Part d
a3(i)=1/(sqrt(1+1333*t));
XA3(i)=(tau^2)*a3(i)/(1+(tau^2)*a3(i));
end
t=[0:5:120];
plot(t,XA,t,XA1,t,XA2,t,XA3)
xlabel('Time(days)')
ylabel('XA')
legend('Zero Order','1st Order','2nd Order','3rd Order');
XA_avg=(1/120)*integrate('(100*(1-(8.3125*10^-3)*t))/(1+100*(1-(8.3125*10^-3)*t))','t',0,120);
XA1_avg=(1/120)*integrate('(100*exp(-0.05*t))/(1+100*exp(-0.05*t))','t',0,120);
XA2_avg=(1/120)*integrate('(100*(1/(1+3.325*t)))/(1+100*(1/(1+3.325*t)))','t',0,120);
XA3_avg=(1/120)*integrate('(100*1/(sqrt(1+1333*t)))/(1+100*(1/sqrt(1+1333*t)))','t',0,120);
printf("\n for d=0,the mean conversion is % f",XA_avg)
printf("\n for d=1,the mean conversion is % f",XA1_avg)
printf("\n for d=2,the mean conversion is % f",XA2_avg)
printf("\n for d=3,the mean conversion is % f",XA3_avg)

