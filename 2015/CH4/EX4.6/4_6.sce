clc
//initialisation of variables
h1=2979 //kj/kg
h2=2504.3 //kj/kg
h3=1987.4 //kj/kg
h4=152 //kj/kg
h6=561 //kj/kg
//CALCULATIONS
m=(h6-h4)/(h2-h4)
wo=(h1-h2)+(1-m)*(h2-h3)
qs=h1-h6
teff=wo/qs
ssc=3600/wo
//RESULTS
printf('work output is %2fkj/kg',wo)
printf('\nheat supplied is %2fkj/kg',qs)
printf('\nthermal efficiency is %2f',teff)
printf('\nspecific steam consumption is %2fkg/kwh',ssc)
