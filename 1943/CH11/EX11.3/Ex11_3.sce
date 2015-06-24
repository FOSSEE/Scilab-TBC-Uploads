
clc
clear
//Input data
a=215//Current in A
v=210//Voltage in V
e=85//Efficiency in percent
q=11.8//Quantity of fuel supplied in kg/h
cv=43//Calorific value in MJ/kg
af=18//Air fuel ratio
w=560//Water in litres/h
tw=38//Temeparature in degree C
te=97//Temeparature in degree C
cp=1.04//Specific heat in kJ/kg.K
ta=30//Temeparature in degree C
l=32//Percentage lost 
sw=4.187//Specific heat in kJ/kg.K

//Calculations
P=(a*v)/1000//Power in kW
BP=(P/(e/100))//Brake power in kW
E=(q/3600)*cv*1000//Energy supplied in kW
mg=(q/3600)*(1+af)//Rate of gases in kg/s
he=(mg*cp*(te-ta))+((w/3600)*sw*tw)//Heat carried away by exhaust gases in kW
hj=(l/100)*E//Heat lost to jacket cooling water in kW
pBP=(BP/E)*100//Percentage
pE=(E/E)*100//Percentage
phe=(he/E)*100//Percenatge
phj=(hj/E)*100//Percenatge 

//Output
printf('                           ENERGY BALANCE SHEET \n                                             (in kW)            (in percent)\n 1. Brake power                               %3.2f              %3.2f \n 2. Heat carried away by exhaust gases        %3.2f              %3.2f \n 3. Heat lost to jacket cooling water         %3.2f              %3.2f \n 4. Heat loss unaccounted                     %3.2f              %3.2f \n             Total                            %3.2f             %3.2f',BP,pBP,he,phe,hj,phj,(E-(BP+he+hj)),(((E-(BP+he+hj))/E)*100),E,(pBP+phe+phj+(((E-(BP+he+hj))/E)*100)))

