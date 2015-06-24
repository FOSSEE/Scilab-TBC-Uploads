clc
clear
//Input data
Tu=645;//The temperature at the end of compression process in K
usu=310;//The internal energy at the end of compression process in kJ/kg air 
pu=(15.4*1.013);//The pressure at the end of the compression process in bar 
Vu=0.124;//The volume at the end of the compression process in m^3/kg air 
e=1;//Equivalence ratio 
f=0.065;//Burned gas fraction 

//Calculations 
ufu=-118.5-(2963*f);//Internal energy of formation in kJ/kg air 
ub=usu-ufu;//The internal energy for constant volume adiabatic combustion in kJ/kg air 
Vb=Vu;//The volume for constant volume adiabatic combustion in kJ/kg air 
Tb=2820;//The temperature for constant volume adiabatic combustion corresponding to ub,Vb on the burnt gas chart in K 
pb=6500;//The pressure for constant volume adiabatic combustion corresponding to ub,Vb on the burnt gas chart in kN/m^2 
hfu=-129.9-(2958*f);//The enthalpy of formation in kJ/kg air 
hsu=440;//The enthalpy from chart corresponding to temp Tu in kJ/kg air 
hb=hsu+hfu;//The enthalpy for constant pressure adiabatic combustion in kJ/kg air 
pb1=1560;//The pressure for constant pressure adiabatic combustion in kN/m^2 
ub1=-700;//Trail and error along the pb internal energy in kJ/kg air 
vb1=(118-ub1)/pb;//The volume in m^3/kg air 
Tb1=2420;//The temperature for constant pressure adiabatic combustion corresponding to ub,Vb on the burnt gas chart in K 

//Output
printf('(a)For constant volume adiabatic combustion,\n The temperature is %3.0f K \n The pressure is %3.0f kN/m^2 \n (b)For constant pressure adiabatic combustion, \n The temperature is %3.0f K \n The pressure is %3.0f kN/m^2',Tb,pb,Tb1,pb1)
