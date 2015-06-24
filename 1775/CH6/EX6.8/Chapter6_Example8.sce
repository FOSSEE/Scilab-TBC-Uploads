//Chapter-6, Illustration 8, Page 314
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
Tc=20;//Temperature of condenser in oC
Te=-25;//Temperature of evaporator in oC
m=15;//Mass of ice per day in tons
Ts=5;//Subcooled temperature in oC
Tsh=10;//Superheated temperature in oC
n=6;//No. of cylinders
N=950;//Speed of compressor in rpm
x=1;//Stroke to bore ratio
h1=402;//Enthalpy at point 1 from R-22 tables in kJ/kg
h2=442;//Enthalpy at point 2 from R-22 tables in kJ/kg
h3=216;//Enthalpy at point 3 from R-22 tables in kJ/kg
h4=216;//Enthalpy at point 4 from R-22 tables in kJ/kg
v1=2.258;//Specific volume at point 1 in (m^3)/min

//CALCULATIONS
Re=h1-h4;//Refrigerating effect in kJ/kg
mr=(m*14000)/(Re*60);//Mass flow of refrigerant in kg/min
Pth=(mr*(h2-h1))/60;//Theoretical power in kW
COP=(h1-h4)/(h2-h1);//Co-efficient of performance
Dth=v1/n;//Theoretical displacement per cylinder
D=(((Dth*4)/(3.147*N))^(1/3))*1000;//Theoretical bore of compressor in mm
L=D;//Theoretical stroke of compressor in mm

//OUTPUT
mprintf('Refrigerating effect is %3.0f kJ/kg \n Mass flow of refrigerant per minute is %3.2f kg/min \n Theoretical input power is %3.2f kW \n COP is %3.2f \n Theoretical bore of compressor is %3.2f mm \n Theoretical stroke of compressor is %3.2f mm',Re,mr,Pth,COP,D,L)







//==============================END OF PROGRAM=================================
