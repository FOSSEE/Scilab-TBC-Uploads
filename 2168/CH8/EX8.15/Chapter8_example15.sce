clc
clear
//Input data
CO=17//Percentage composition by volume
H2=53.4//Percentage composition by volume
CH2=28.8//Percentage composition by volume
O2=0.8//Percentage composition by volume
ea=30//Percentage of excess air
v=1//Volume in m^3

//Calculations
ta=((100/21)*((CO/100)/2+(H2/100)/2+(CH2/100)*2-(O2/100)))//Theoretical air in m^3/m^3 of gas
aa=((1+(ea/100))*ta)//Actual air in m^3/m^3 of gas
Vg=(v+aa)//Volume of gas air mixture in m^3/m^3 of gas

//Output
printf('Total quantity of air required is %3.2f m^3/m^3 of gas \n The volume of gas air mixture is %3.2f m^3/m^3 of gas',ta,Vg)
