//Fuels and Combustion//
//Example 8.20//
w=1080;//quantity of water taken in grams//
W=150;//Water equivalent of calorimeter in grams//
m=0.681;//weight of coal taken or mass of fuel in grams//
dt=3.61;//rise in temperature of water in degree C//
AC=50;//Acid correction in calories//
FC=5;//Fuse wire correction in calories//
CC=0.05;//cooling correction in calories//
GCV=((w+W)*(dt+CC)-(AC+FC))/m;//Gross calorific value of the sample in cal per grams//
printf('Gross Calorific value of the fuel=GCV=%fcal/g',GCV);
