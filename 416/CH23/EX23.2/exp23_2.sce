clc
clear
disp('example 23.2')
sp=25*10^3 //size of the plant
cc=800*10^6  //capital cost
ir=0.1    //interest rate
lp=20    //life of the plant
mc=0.05  //maintence cost
lf=0.6   //load factor 
sub=0.3  //subsidy
nc=cc*(1-sub)
nck=nc/sp 
crf=ir/(1-(1+ir)^(-lp))
afc=nck*crf
aomc=nck*mc
tac=afc+aomc
aeg=8760*lf
gc=tac/aeg
printf("net capital cost Rs%d*10^6 \nnet capital cost per KW Rs%f/kW \ncrf %f \nannual fixed cost Rs%d per kW \nannual operation and maintenance cost Rs%dper kW \nTotal annual cost Rs%dper kW \nAnnual energy generated per kW of plant capacity %.1fkWh \ngeneration cost Rs%.3fkWh",nc/(10^6),nck,crf,afc,aomc,tac,aeg,gc)