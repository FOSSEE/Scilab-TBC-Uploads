//Fuels and Combustion//
//Example 8.6//
W=10;//weight of Water heated of calorimeter in Kilograms//
V=0.1;//volume of gas used in metrecube//
t1=22;//inlet temperature of water in degree C//
t2=30;//outlet temperature of water in degree C//
GCV=W*(t2-t1)/V;//Gross calorific value of the sample in Kilocal per metre3//
printf('Gross Calorific value of the fuel=GCV=%fKcal/m3',GCV);
L=580;//latent heat of water in cal/g//
Ws=0.025;//weight of steam condensed in grams//
LCV=GCV-(Ws*L/V);//Net calorific value of the sample in Kcal per meter3//
printf('\nNet calorific value of the sample=LCV=%fKcal/m3',LCV);