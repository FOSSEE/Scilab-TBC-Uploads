clc
clear
disp("example 10.16")
//given
ia=32;ib=32;ic=1.68;f=10^5
wt=18;rt=24-wt
p=30
function [in]=inpu(a,b,c,f,t,p)
    in=(a+b*p+c*p^2)*f*t
endfunction
hi1=inpu(ia,ib,ic,f,wt,p);hi2=inpu(ia,ib,ic,f,rt,p/2)
disp("(a)")
printf("for full load condition for %d hours is %ekj \n for half load condition for%d s %ekj \n total load %ekj",wt,hi1,rt,hi2,hi1+hi2)
disp("(b)")
te=p*wt+(p/2)*rt
ul=te/24
hin=inpu(ia,ib,ic,f,24,ul)
sav=hi1+hi2-hin
savp=sav/(te*1000)
printf("\n total energy produced\t%dMW \n unifor load\t%dMW \n heat input under uniform load condition %ekj \n saving in heat energy %ekj \n saving in heat energy per kWh %dkj/kWh",te,ul,hin,sav,savp)