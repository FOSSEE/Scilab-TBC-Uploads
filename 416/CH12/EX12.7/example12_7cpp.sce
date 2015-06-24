clc
clear
disp('example 12 7')
i=100;pf=-0.8;v=11*1000;x=4*%i;ds=10;pfc=-0.8 //given,currents,power factor,voltage,reactance,delta w.r.t steem supply,pf of alternator
e=(v/sqrt(3))+(i*x*(pf-sind(acosd(pf))*%i))
disp('a')
ph=atand(imag(e)/real(e))
printf(" open circuit emf %dvolts per phase and %.2f degree",abs(e),ph)
d=ds-ph
eee=round(abs(e)/100)*100
ic=round(abs(eee)*sind(d)/abs(x))
iis=(eee^2-(abs(x)*ic)^2)^(0.5)
is=(iis-v/sqrt(3))/abs(x)
tad=is/ic
d=atand(tad)
ii=ic/cosd(d)
pff=cosd(d)
disp('b.')
printf(" current %.1fA \n power factor %.3f",ii,pff)
disp('c.')
ia=ii*pff/abs(pfc)
printf("current %.2fA",ia)