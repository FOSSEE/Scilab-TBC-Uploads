clc
clear
disp('example 4 3')
md=160;lff=0.7;dfc=1.7//maximum demand //load factor//diversity factor bt consumers
ic=200;//installed capacity
ccp=30000//capital cost of plant per kW
ctds=1800*10^6 //capital cost of transmission and distribution
idi=0.11 //interest,depreciation insurance and taxes on capital investiment
fmc=30*10^6  //fixed managerial and general maintanance cost
ol=236*10^6 //operating labour,maintanance and suppies
cm=90*10^6 //cost of metering,billing and collection
eca=0.05  //energy consumed by auxillary
el=0.15//energy loss and maintanance
p=0.25
lf=0.8//load factor
ap=0.5 //addition energy for profit
disp('a')
printf(" capital cost of plant Rs%e \n total capital cost Rs%e\n interest,depereiation system Rs%e ",ccp*ic*10^3,ccp*ic*10^3+ctds,(ccp*ic*10^3+ctds)*idi)
printf("\n sum of maximum demand of consumers energy prodused %dMW \n energy produced %ekWh \n energy consumed by auxilliries %ekWh\n energy output %ekWH \n energy sold to consumer %ekWh\n",md*dfc,md*8760*lff*10^3,md*8760*lff*eca*10^3,md*8760*lff*10^3*(1-eca),md*8760*lff*10^3*(1-eca)*(1-el))
disp('(b)fixed cost')
idetc=(ccp*ic*10^3+ctds)*idi
tot=idetc+fmc;
printf(" interest, deprecition etc Rs%e per year\n managerial and maintence Rs%.eper year \n total \t Rs%e ",idetc,fmc,tot)
pro=p*tot
gtot=tot+pro
printf("\n profit@%d \tRs%eper year \n grand total Rs%e per year",p*100,pro,gtot)
disp('Operating cost')
tot2=ol+cm
pro2=tot2*p
gtot2=tot2+pro2
printf(" Operating labour,supplies maintenance etc Rs.%eper year \n metering,billing etc Rs%eper year\n total\t\tRs%e per year\n profit \t Rs%eper year \n grand total \t Rs%e per year",ol,cm,tot2,pro2,gtot2)
disp('tariff')
co=gtot/(md*dfc*1000)
es=md*8760*lff*10^3*(1-eca)*(1-el)
cs=gtot2/es
printf(" cost per kW \tRs%e \n cost per kWh \tRs%e",co,cs)
disp('(b)')
ep=md*1000*8760*lf
printf(" energy produced %ekWh \n energy consumed by auxiliaries %ekWh/year \n energy output of plant %ekWh \n energy sold to consumer %ekWh",ep,ep*eca,ep*(1-eca),ep*(1-eca)*(1-el))
estc=ep*(1-eca)*(1-el)
