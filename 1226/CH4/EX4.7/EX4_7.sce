clc;funcprot(0);//EXAMPLE 4.7
// Initialisation of Variables
r=15;......................//Compression ratio
C=43000;..................//Calorific value of fuel used in kJ/kg
afr=27;...................//Air fuel ratio
t2=870;....................//Temperature of the charge at the end of the stroke in Kelvin
cv=0.71;......//Specific heat constant at constant volume in kJ/kgK
R=0.287;.........................//Gas constant in kJ/kgK
k=20*10^(-5);
//Calculations
cp=cv+R;............................//Specific heat at constant pressure
ha=C/(afr+1);......................//Heat added per kg of charge in kJ
t3=((-2*cp)+sqrt((4*cp*cp)+(4*k*((2*cp*t2)+(k*t2*t2)+(2*ha)))))/(2*k);
co=((t3/t2)-1)/(r-1);.............//combustion occupies this amt of stroke 
disp(co*100,"Percentage of the stroke when the combustion is completed is :")
