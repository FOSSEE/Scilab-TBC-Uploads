clc
clear
disp('example:23.1')
sp=11*10^3;pc=300*10^6;ir=0.15;lp=15;fc=7;eff=0.35;cv=10100;mc=0.02;lf=0.8;er=860  //let the given variable be --sp=size of plant ,pc=project cost,ir=interest rate,lp=life of the plant,fc=fuel cost,eff=efficiency,cv=calorific value,er=860,mc=maintenance cost,lf=load factor,
cac=pc/sp //let the variable cac be captel cost
printf("\ncapitel cost is %.1f/kW",cac)
crfd1=(1+ir)^(-lp)
crfd=1-crfd1
crf=ir/crfd //crf=capitel cost recovery factor
printf("\nCRF=%.3f",crf)
anfc=cac*crf //anual fixed cost is prodect of capitel cost and capitel recovery factor
printf("\nannual fixed cost is Rs%.2f/kW",anfc)
hr=er/eff //heat rate is energy ratedivided by efficiency
printf("\nheat rate is %fcal/kWh",hr) 
gpf=cv/hr;//kW generated per liter is division of calorific value to hr
printf("\nnumber of kWh generated per liter of fuel is %.2fkWh/litre",gpf)
fcp=fc/gpf //fuel cost per unit is fuel cost divided by generated per liter
printf("\nfuel cost per unit Rs%fper kWh",fcp)
aomc=cac*mc //annual operation and maintenence cost
printf("\nannual operation cost Rs.%.4f/kW",aomc)
afom=anfc+aomc 
printf("\nannual fixed, operation and maintence cost Rs.%.2f/kW",afom)
egpy=8760*lf //energy generated is 24*12*60
printf("\nenergygenerated per year is %dkWh",egpy)
afomc=afom/egpy
printf("\nannual fixed operation and maintenence cost per kWh of energy %.4f/kWh",afomc)
gco=fcp+afomc //generated cost is sum of fuel cost and maintenence cost
printf("\ngenerated cost is Rs%.4f/kWh",gco)
