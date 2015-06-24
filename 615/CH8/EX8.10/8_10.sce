//Fuels and Combustion//
//Example 8.10//
C=810;//weight of carbon in 1kg of coal sample in grams//
O=80;//weight of oxygen in 1kg of coal sample in grams//
S=10;//weight of Sulphur in 1kg of coal sample in grams//
N=10;//weight of nytrogen in 1kg of coal sample in grams//
H=50;//weight of hydrogen in 1kg of coal sample in grams//
MO=C*32/12+H*16/2+S*32/32;//minimum weight of oxygen needed in grams//
printf('minimum weight of oxygen needed=MO=%fg',MO);
printf('\nOxygen already available in fuel=80grams\nNet oxygen needed=2490grams');
MA=2490*100/23;//minimum weight of air needed in grams//
printf('\nminimum amount of air needed=MA=%fg',MA);
printf('\nProducts of combustion are CO2 and SO2');
printf('\nFrom the equations written above,44grams of CO2 is obtained 12grams of carbon\nhence,weight of CO2 obtained from 810grams of carbon=810*44/12=2970grams');
printf('\nSimilarly,weight of SO2 obtained from 10grams of sulphur=10*64/32=20grams');
NF=10+MA*0.77;//weight of nitrogen present in the products in grams//
printf('\nWeight of nitrogen present in the products=NF=%fg',NF);
WD=2970+20+8346;//total weight of dry products in grams//
printf('\nTotal weight of dry products=WD=%fg',WD);
PCO2=2970*100/WD;//percentage composition of CO2//
printf('\nPercentage composition of CO2=PCO2=%f',PCO2);
PSO2=20*100/WD;//percentage composition of SO2//
printf('\nPercentage composition of SO2=%f',PSO2);
PN2=8346*100/WD;//percentage composition of N2//
printf('\nPercentage composition of N2=PN2=%f',PN2);

