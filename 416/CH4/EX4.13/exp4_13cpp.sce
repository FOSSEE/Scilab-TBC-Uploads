clc
clear
disp('example 4 13')
p=2//constant output in MW
pf=0.9//power factor
pa=10//load
pb=5
pfb=0.8//power factor at load of 5MW
td=tand(acosd(pf))
go=p*(1-td*%i)
op=0.8
tp=tand(acosd(pfb))
printf("power factor of indection generator is leading therefor induction generator output %d%.2fiMVA /n (a) \n",real(go),imag(go))
tl=pa*(1+tp*%i)
sg=tl-go
da=atand(imag(sg)/real(sg))
printf(" total load %d+%.1fiMW \n synchronous generator load %d+%.3fiMW \n\t\t=%.2fMW at angle %.2f \n power factor of synchronous generator is %.2flagging",real(tl),imag(tl),real(sg),imag(sg),abs(sg),da,cosd(da))
tl1=pb*(1+tp*%i)
sg1=tl1-go
da1=atand(imag(sg1)/real(sg1))
disp("(b)")
printf(" total load %d+%.1fiMW \n synchronous generator load %d+%.3fiMW \n\t\t=%.2fMW at angle %.2f \n power factor of synchronous generator is %.2flagging",real(tl1),imag(tl1),real(sg1),imag(sg1),abs(sg1),da1,cosd(da1))
