clc
//initialisation of variables
h1=2990 //kj/kg
h2=2710 //kj/kg
h3=2325 //kj/kg
h4=152 //kj/kg
h5=152 //kj/kg
h7=505 //kj/kg
wo=612 //kj/kg
qs=2485 //kj/kg
//CALCULATIONS
m=(h7-h4)/(h2-h4)
mph=m*30000
ip=((h1-h2)+(1-m)*(h2-h3))*(30000/3600)
teff=wo/qs
//when there is no feeding
eff=(h1-h3)/(h1-h4)
sc=(3600/(h1-h3))*ip
//RESULTS
printf('internal powers is %2fkw',ip)
printf('\nthermal efficiency when feeding is there is %2f',teff)
printf('\nwhen there is no feeding,thermal efficiency is %2f',eff)
printf('\nsteam consumption is %2fkg/h',sc)
