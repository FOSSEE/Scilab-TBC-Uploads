//Fuels and Combustion//
//Example 8.3//
w=500;//quantity of water taken in grams//
W=2000;//Water equivalent of calorimeter in grams//
m=1.000;//weight of coal taken or mass of fuel in grams//
t1=24;//initial temperature of water in degree C//
t2=26.2;//final temperature of water in degree C//
AC=50;//Acid correction in calories//
FC=10;//Fuse wire correction in calories//
CC=0;//cooling correction in calories//
GCV=((w+W)*(t2-t1+CC)-(AC+FC))/m;//Gross calorific value of the sample in cal per grams//
printf('Gross Calorific value of the fuel=GCV=%fcal/g',GCV);
H=6;//percentage of hydrogen//
C=93;//percentage of carbon//
LCV=GCV-(9*H*580/100);//Net calorific value of the sample in cal per gram//
printf('\nNet calorific value of the sample=LCV=%fcal/g',LCV);