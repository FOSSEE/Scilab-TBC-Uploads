clear
clc
disp("dat 3.17")
pco=120*10^3 //3 units of 40MW
caco=68*10^8 //6 year of consumption
inr=0.16 //intrest rate
de=2.5*10^-2 //depreciation
oanm=1.5*10^-2//OandM
ger=0.5*10^-2//general reserve
pllf=0.6 //plant load facot
aucon=0.5*10^-2 //auxiliary consumption
tac=caco*(inr+de+oanm+aucon) ///total cost
engpy=pco*pllf*24*365 //energy generatedper year
eabb=engpy*(1-ger) //energy available at bus bar
geco=tac/eabb //generation cost
printf(" total annual costs is Rs%e per year \n energy generated per year =%ekWh/year \n energy available at bus bar %ekWh/year \n generation cost is Rs.%fper kWh",tac,engpy,eabb,geco)