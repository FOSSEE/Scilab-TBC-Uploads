//Fuels and Combustion//
//Example 8.16//
C=3;//weight of carbon in 1kg of coal sample in Kilograms//
WO2=C*32/12;//weight of oxygen in carbon sample in Kilograms//
WA=WO2*100/23;//weight of air in the carbon sample in Kilograms//
printf('weight of air required for combustion of carbon=WA=%fKg',WA);
MA=WA/28.92;//mol of air in kilograms//
VA=MA*22.4;//Volume of air required in m3 air//
printf('\nVolume of air required=VA=%fm3',VA);