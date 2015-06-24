//Fuels and Combustion//
//Example 8.18//
C=624;//weight of carbon in 1kg of coal sample in grams//
O=69;//weight of oxygen in 1kg of coal sample in grams//
S=8;//weight of Sulphur in 1kg of coal sample in grams//
N=12;//weight of nytrogen in 1kg of coal sample in grams//
H=41;//weight of hydrogen in 1kg of coal sample in grams//
CO2=129;//weight of CO2 in 1kg of coal sample in grams//
CO=2;//weight of CO in 1kg of coal sample in grams//
MO=C*32/12+H*16/2+S*32/32-O;//minimum weight of oxygen needed in grams//
MA=MO*0.1/23;//minimum weight of air needed in kilograms//
printf('minimum amount of air needed=MA=%fkg',MA);
WC=CO2*(12/44)+CO*(12/28);//weight of C in fuel gas/kg//
printf('\nWeight of C in fuel gas/kg=WC=%fg',WC);
WF=C/WC;//Weight of fuel gas/kg of coal in g//
printf('\nweight of fuel gas/kg of coal=WF=%fg',WF);
O2=2*16/28;//O2 needed to convert CO to CO2 in Kg//
RWO2=(61-O2)/1000;//remaining weight of O2/kg of fuel gas in Kg//
printf('\nRemaining weight of O2/kg of fuel gas=RWO2=%fkg',RWO2);
WO2=WF*RWO2;//weight of O2 obtained by burning 1kg coal in kg//
printf('\nWeight of O2 obtained by burning coal=WO2=%fkg',WO2);
AR=WO2*100/23;//air required in kilograms//
printf('\nAir required=AR=%fkg',AR);
WAS=MA+AR;//weight of air actually supplied/kg coal burnt in kg//
printf('\nWeight of air actually supplied/kg coal burnt=WAS=%fkg',WAS);

