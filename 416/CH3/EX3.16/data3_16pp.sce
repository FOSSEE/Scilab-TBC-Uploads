clear
clc 
disp("data 3.16")
pu=500*10^3  ;pc=2*pu //plant unit,plant capacity
land=11.865*10^9
cicost=30.135*10^9
ccost=land+cicost;   //capital cost =land cost+civil cost
plife=25;    //plant life
ir=0.16;    //interest rate
ond=1.5*10^-2;// o and mof capital cost
gr=0.5*10^-2  //grneral reserve of capital cost
calv=4158  //calorific value kj per kg
coalcost=990  //caol cost per ton
heat=2500//heat rate kcal/kWh
retur=0.08 //return
salvage=0
plf=0.69 ;auxcons=0.075 //auxiliary consumption
disp("cost calculation ")
disp("using sinking fund depreciation")
ande=(ir/((ir+1)^(plife)-1))*100
afixcost=ccost*(ir+ond+retur+gr+(ande/100))
afcppc=afixcost/pc
printf("annual depretion reserve is %fpersent \n annual fixed cost Rs%f \n annual fixed cost per Rs%dkWh",ande,afixcost,afcppc)
fclco=(heat*coalcost)/(calv*1000)
engepc=24*365*plf
enavil=engepc*(1-auxcons)
gencost=(afcppc/enavil)+fclco
printf("\nfuel cost Rs.%f/kWh \nenergy generated per kW of plant capacity Rs.%fkWh \nenergy available bus bar %fkWh \n generation cost Rs%f perkWh",fclco,engepc,enavil,gencost)

