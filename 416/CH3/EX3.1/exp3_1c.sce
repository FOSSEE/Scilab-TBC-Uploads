clc
disp("example 3.1")
totpow=110*10^3 //(kW)
uc1=18000;fcr1=0.1;cf1=0.55;fuelcons1=0.7;fuelcost1=1500/1000;om1=0.2;utilizationf1=1;
uc2=30000;fcr2=0.1;cf2=0.60;fuelcons2=0.65;fuelcost2=1500/1000;om2=0.2;utilizationf2=1;
//given uck=unit capital cost k;fcrk= fixed charge rate of kth unit;cfk=capacity factor at k th unit; omk=annual cost of operating labour ;totpow=total power rating of units
afc1=fcr1*uc1*totpow;afc2=fcr2*uc2*totpow;
e1=8760*cf1*totpow;e2=8760*cf2*totpow;
annualfuel1=e1*fuelcons1;annualfuel2=e2*fuelcons2;
fc1=annualfuel1*fuelcost1;fc2=annualfuel2*fuelcost2;
om11=om1*fc1;om22=om2*fc2;
aoc1=fc1+om1;aoc2=fc2+om2;
apc1=aoc1+afc1;apc2=aoc2+afc2;
gc1=apc1/fc1;gc2=apc2/fc2
disp("solution for (a)")
printf("\nafc1=Rs.%d\n e1=%dkWh\n annualfual1=%fkg \n fc1=Rs.%d \n om1=Rs.%d \n aoc1=Rs.%f \n apc1=Rs.%f \n gc1=%fkWh\n",afc1,e1,annualfuel1,fc1,om11,aoc1,apc1,gc1)
  disp("solution for (b)")
printf("\nafc2=Rs.%d\n e2=%dkWh\n annualfual2=%fkg \n fc2=Rs.%d \n om22=Rs.%d \n aoc2=Rs.%f \n apc2=Rs.%f \n gc2=%fkWh\n",afc2,e2,annualfuel2,fc2,om22,aoc2,apc2,gc1)
ogc=(apc1+apc2)/(e1+e2)

printf("\n\nsolution of (c)\nogc=Rs.%f/kWh",ogc)