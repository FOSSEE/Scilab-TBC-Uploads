//Fuels and Combustion//
//Example 8.7//
C=90;//percentage of carbon//
O=3.0;//percentage of oxygen//
S=0.5;//percentage of sulphur//
N=0.5;//percentage of nytrogen//
H=3.5;//percentage of hydrogen//
H2O=0.1;//percentage of H2O//
printf('12grams of carbon will need 32grams of oxygen\n2grams of hydrogen will need 16grams of oxygen\n32grams of sulphur will need 32grams of oxygen');
AO=900*32/12+35*16/2+5*32/32;//amount of oxygen required in grams//
printf('\nBut we already have 30grams of oxygen \nso amount of oxygen we require is 2655grams');
AN=2655*100/23;//amount of air needed in grams//
printf('\namount of air needed=AN=%fg',AN);
