//Chapter-4, Illustration 10, Page 173
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=10.5;//Pressure at point 1 in bar
x1=0.95;//Dryness fraction
n=1.135;//Adiabatic gas constant
P2=0.85;//Pressure at point 2 in bar
vg=0.185;//Specific volume in m^3/kg


//CALCULATIONS
c=n/(n-1);//Ratio
Pt=((2/(n+1))^c)*P1;//Throat pressure in MN/(m^2)
v1=x1*vg;//Specific volume at point 1 in m^3/kg
Ct=sqrt((2*n*P1*v1*(10^5)/(n+1)));//Velocity at throat in m/s
vt=((P1/Pt)*(v1^n))^(1/1.135);//Specific volume at throat in m^3/kg
m=Ct/vt;//Mass flow rate per unit throat area in kg/(m^2)

//OUTPUT
mprintf('Throat velocity is %3.2f m/s \n Mass flow rate of steam is %3.2f kg/(m^2)',Ct,m)





//==============================END OF PROGRAM=================================
