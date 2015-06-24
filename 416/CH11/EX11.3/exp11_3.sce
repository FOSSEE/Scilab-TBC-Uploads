clc
clear
disp("example 11.3")
//given 
p=250//load
rt=14 //run time
t=24//total time
ac=5;bc=8;cc=0.05 //variables of cost equation
bw=30;cw=0.05 //variables of water per power
qw=500//quantity of water
lam=bc+cc*2*p //lambda
a=-qw*(10^6)/(3600*rt)
inn=sqrt(bw^2-4*cw*a)
phh1=(-bw+inn)/(2*cw)//solution of quadratic equation
phh2=(-bw-inn)/(2*cw)
if phh1>0 then
     r=lam/(bw+cw*phh1) 
    printf(" hydro plant power is %fMW \n the cost of water is %fRs.per hour/m^3/sec",phh1,r) 
end
if phh2>0 then
     r=lam/(bw+cw*phh2) 
    printf(" hydro plant power is %fMW \n the cost of water is %fRs.per hour/m^3/sec",phh2,r) 
end