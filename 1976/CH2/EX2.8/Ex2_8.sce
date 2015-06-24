
//To Obatin a two part tariff for the consumers
//Page 90
clc;
clear;

EG=390*(10^6); //Energy Generated in kWhr
MD=130*(10^6); //Maximum Demand of the Supply
SCeff=90/100; //The Amount of energy transferred from Substation to Consumer
//Total Cost for Each Division
Fuel=5*(10^6);
Gen=2.4*(10^6);
Trans=5*(10^6);
Dist=3.4*(10^6);
Tot=Fuel+Gen+Trans+Dist; //Total Cost

deff('x=Runcost(y,z)','x=(y*z/100)') //Function to Find out the Running Costs
//Running Costs
Fuelr=Runcost(90,Fuel);
Genr=Runcost(10,Gen);
Transr=Runcost(5,Trans);
Distr=Runcost(7,Dist);
Totr=Fuelr+Genr+Transr+Distr; //Total Cost

FixCost=Tot-Totr;// Fixed Cost
FixChar=FixCost*1000/MD; //Fixed Charges per KW
EnChar=Totr*100/(EG*SCeff); //Energy Charges in Paise for Consumer
OverCost=Tot*100/(EG*SCeff); //Overall Energy Charges

LF=40/100; //Load Factor Raised to 40%
EG1=LF*MD*8760/1000;  //Energy Generated for Different Load Factor
Totr1=Totr*(EG1/EG); //Cost of Energy Generated
Tot1=FixCost+Totr1; //Total Cost for the New Load Factor
OverCost1=Tot1*100/(EG1*SCeff); //Overall Energy Charges

Saving=(OverCost-OverCost1)*100/OverCost; //Percentage Saving in the Overall Cost per kWhr

printf('The Fixed Charges is %g rupees per kW\n',FixChar)
printf(' The Energy Charges for the Consumer is %g paise per kWhr\n',EnChar)
printf(' IF the Load Factor is raised to 40percent of the Same Maximum Demand, then the percentage saving in the overall costs is %g percent\n',Saving)
