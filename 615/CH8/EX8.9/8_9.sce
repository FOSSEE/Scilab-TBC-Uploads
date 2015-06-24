//Fuels and Combustion//
//Example 8.9//
C=750;//weight of carbon in 1kg of coal sample in grams//
O=121;//weight of oxygen in 1kg of coal sample in grams//
A=45;//weight of Ash in 1kg of coal sample in grams//
N=32;//weight of nytrogen in 1kg of coal sample in grams//
H=52;//weight of hydrogen in 1kg of coal sample in grams//
MO=C*32/12+H*16/2-O;//minimum weight of oxygen needed in grams//
printf('minimum weight of oxygen needed=MO=%fg',MO);
MA=MO*100/23;//minimum weight of air needed in grams//
printf('\nminimum amount of air needed=MA=%fg',MA);
GCV=(808*C+3450*(H-O/8))/100;//Gross calorific value of the sample in cal per grams//
printf('\nGross Calorific value of the fuel=GCV=%fcal/g',GCV);
LCV=GCV-0.09*H*0.1*587;//law calorific value of the sample in cal/gram//
printf('\nLaw calorific value of the sample=LCV=%fcal/g',LCV);
