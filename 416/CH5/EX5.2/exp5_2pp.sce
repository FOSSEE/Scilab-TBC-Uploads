clear
clc
disp("example 5.2")
aer=100*10^6
md=25*10^3
function [u]=ucc(dd,e)
   u=600*dd+0.3*e //rs per kW
   endfunction
p=30*10^3
ap=9000//per kW
ahr=4000
bp=10500
bhr=3500
cp=12000
chr=3000
salc=3000
sal=2280
sh=10
t=0.04
i=0.5*10^-2
r=0.07
hv=5000//l cal per kg
fuc=225//rs per ton
mc=150000//for each plan
n=20
dr=r/((r+1)^n-1)
pwf=r/(1-(r+1)^(-n))
printf("persent of worth factor is %f",pwf)
afc=ahr*fuc*10^8/(hv*10^3)
bfc=bhr*fuc*10^8/(hv*10^3)
cfc=chr*fuc*10^8/(hv*10^3)
ass=12*(salc+sh*sal)
aaoc=ass+mc+afc
baoc=ass+mc+bfc
caoc=ass+mc+cfc
ai=ap*p;bi=bp*p;ci=cp*p
atac=(t+i)*ap*p+aaoc
btac=(i+t)*bp*p+baoc
ctac=(i+t)*cp*p+caoc
uts=ucc(md,aer)
apw=atac/pwf;bpw=btac/pwf;cpw=ctac/pwf;utss=uts/pwf
ta=apw+ai;tb=bpw+bi;tc=cpw+ci
printf("\nannual cost excludinding interest and \ndepreciation of a \t\tRs%d \npersent worth factor \t\t %f  \npresent worth annual cost of a is Rs%d \n investement of a is \tRs%d \n total persent worth of a is \t%d",atac,pwf,apw,ai,ta)
printf("\n\n annual cost excludinding interest and \ndepreciation of b \t\tRs%d \npersent wort factor \t\t%f  \npresent worth annual cost of b is Rs%d \n investement of b is \tRs%d \n total persent worth of b is \t%d",btac,pwf,bpw,bi,tb)
printf("\n \nannual cost excludinding interest and \ndepreciation of c \t\tRs%d \npersent wort factor \t\t%f  \npresent worth annual cost of c is Rs%d \n investement of c is \tRs%d \n total persent worth of c is \t%d",ctac,pwf,cpw,ci,tc)
printf("\n \nannual cost excludinding interest and \ndepreciation of utility service \tRs%d \npersent wort factor \t\t\t%f  \npresent worth annual cost of utility service is Rs%d \n investement of utility service is \t\t nill \n total persent worth of utility service is %d",uts,pwf,utss,utss)
printf("\n\n\tsince the present worth of the utility service is the minimum,it is the obvious choice \nout of the other plans,plan A is the best since it has the lowest present worth")