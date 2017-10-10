////Variable Declaration
xCS2 = 0.3502   //Mol fraction of CS2, g/L
pCS2 = 358.3    //Partial pressure of CS2, torr
p0CS2 = 512.3   //Total pressure, torr

//Calculations
alpha = pCS2/p0CS2
gama = alpha/xCS2

//Results
printf("\n Activity of CS2 %5.4f atm",alpha)

printf("\n Activity coefficient of CS2 %5.4f atm",gama)

