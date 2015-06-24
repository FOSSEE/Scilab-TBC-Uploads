clc
//initialisation of variables
h1=3222.5 //kj/kg
h2=3127.5 //kj/kg
h3=2692.5 //kj/kg
h4=2406.7 //kj/kg
h5=360 //kj/kg
h6=360 //kj/kg
h7=584 //kj/kg
h8=962 //kj/kg
//CALCULATIONS
m1=(h8-h7)/(h2-h7)
m2=((1-m1)*(h7-h5))/(h3-h5)
wo=(h1-h2)+(1-m1)*(h2-h3)+(1-m1-m2)*(h3-h4)
qs=h1-h8
teff=wo/qs
sr=3600/wo
//RESULTS
printf('work output is %2fkj/kg',wo)
printf('\nheat supplied is %2fkj/kg',qs)
printf('\nthermal efficiency is %2f',teff)
printf('\nsteam rate is %2fkg/kwh',sr)
