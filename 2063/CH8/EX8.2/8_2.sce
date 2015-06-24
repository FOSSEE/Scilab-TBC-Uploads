clc
clear
//Input data
P1=12;//Initial pressure of dry saturated steam expanded in a nozzle in bar
P2=0.95;//Final pressure of dry saturated steam expanded in a nozzle in bar
f=10;//Frictional loss in the nozzle of the total heat drop in percentage
d=12;//Exit diameter of the nozzle in mm
hd=437.1;//Heat drop in kJ/kg from steam tables
q=0.859;//Dryness fraction of steam at discharge pressure
vg=1.777;//Specific volume of dry saturated steam at 0.95 bar

//Calculations
n=1-(f/100);//Nozzle coefficient from moiller chart
V2=44.72*(n*hd)^(0.5);//Velocity of steam at nozzle exit in m/s
A=(3.14/4)*(0.012)^(2);//Area of the nozzle at the exit in mm^2
m=((A*V2)/(q*vg))*3600;//Mass of steam discharged through the nozzle per hour in kg/hour

//Output
printf('The mass of steam discharged,when the exit diameter of the nozzle is 12mm is %3.1f kg/hour',m)
