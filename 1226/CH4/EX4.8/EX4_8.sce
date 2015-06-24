clc;funcprot(0);//EXAMPLE 4.8
// Initialisation of Variables
r=14;......................//Compression ratio
t1=87+273;....................//Temperature of the charge at the end of the stroke in Kelvin
p1=1;......................//Pressure of the charge at the end of the stroke in bar
hsupa=1700;............................//heat supplied per kg of air in kJ
cv=0.71;......//Specific heat constant at constant volume in kJ/kgK
k=20*10^(-5);
ga=1.4;.....................//Degree of freedom 
R=0.287;......................//Gas constant in kJ/kgK
//Calculations
p2=p1*(r)^ga;
t2=t1*(r^(ga-1));
ha=hsupa/2;......................//Heat added per kg of charge in kJ
t3=((-2*cv)+sqrt((4*cv*cv)+(4*k*((2*cv*t2)+(k*t2*t2)+(2*ha)))))/(2*k);
p3=(p2*t3)/t2;.............................//Max pressure for constant volume process in bar
P3=p2*((ha/cv)+t2)/t2;.....................//Max pressure for constant specific heat in bar
disp(p3,"Max pressure in the cylinder (in bar):")
cp=cv+R;.................................//Heat capacity at constant pressure in kJ/kgK
t4=((-2*cp)+sqrt((4*cp*cp)+(4*k*((2*cp*t3)+(k*t3*t3)+(2*ha)))))/(2*k);
co=((t4/t3)-1)/(r-1);.............//combustion occupies this amt of stroke 
disp(co*100,"Percentage of the stroke when the combustion is completed is :")

