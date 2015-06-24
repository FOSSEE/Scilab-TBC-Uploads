clear
clc
disp("example 5.3")
aer=100*10^6   //from example 5.1
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
uts=ucc(md,aer)
afc=ahr*fuc*10^8/(hv*10^3)
bfc=bhr*fuc*10^8/(hv*10^3)
cfc=chr*fuc*10^8/(hv*10^3)
ass=12*(salc+sh*sal)
aaoc=ass+mc+afc
baoc=ass+mc+bfc
caoc=ass+mc+cfc
aw=([[dr+t+i]*ap*p+aaoc]/r)+ap*p
bw=([[dr+t+i]*bp*p+baoc]/r)+bp*p
cw=([[dr+t+i]*cp*p+caoc]/r)+cp*p
utt=uts/r+p
printf("\n plan A is \t\tRs.%d \n plan B is \t\tRs.%d \n planC is \t\tRs.%d \nutility services is \tRs%d",aw,bw,cw,utt)
disp("the utility service has the lowest capitalized cost and is the obvious choice. Out of the other plans,plan A is the best")