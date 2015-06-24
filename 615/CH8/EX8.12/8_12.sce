//Fuels and Combustion//
//Example 8.12//
C=780;//weight of carbon in 1kg of coal sample in grams//
O=120;//weight of oxygen in 1kg of coal sample in grams//
S=12;//weight of Sulphur in 1kg of coal sample in grams//
N=21;//weight of nytrogen in 1kg of coal sample in grams//
H=41;//weight of hydrogen in 1kg of coal sample in grams//
MO=C*32/12+H*16/2+S*32/32-O;//minimum weight of oxygen needed in grams//
printf('minimum weight of oxygen needed=MO=%fg',MO);
MA=MO*100/23;//minimum weight of air needed in grams//
printf('\nminimum amount of air needed=MA=%fg',MA);

