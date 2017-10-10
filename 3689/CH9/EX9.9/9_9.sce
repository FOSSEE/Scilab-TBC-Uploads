////Variable Declaration
xCS2 = 0.3502   //Mol fraction of CS2, g/L
pCS2 = 358.3    //Partial pressure of CS2, torr
kHCS2 = 2010.   //Total pressure, torr

//Calculations
alpha = pCS2/kHCS2
gama = alpha/xCS2

//Results
printf("\n Activity of CS2 %5.4f atm",alpha)

printf("\n Activity coefficinet of CS2 %5.4f atm",gama)

