//Chapter-6, Illustration 11, Page 317
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
T1=-18;//Temperature at point 1 in oC
T3=27;//Temperature at point 3 in oC
rp=4;//Pressure ratio
m=0.045;//mass flow rate in kg/s
y=1.4;//Ratio of specific heats
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K

//CALCULATIONS
x=(y-1)/y;//Ratio
T2=(rp^x)*(273+T1);//Temperature at point 2 in K
Tmax=T2-273;//Maximum temperature in oC
T4=((1/rp)^x)*(273+T3);//Temperature at point 4 in K
Tmin=T4-273;//Minimum temperature in oC
qL=Cp*(T1-Tmin);//Heat rejected
Wcin=Cp*(Tmax-T1);//Compressor work
Wtout=Cp*(T3-Tmin);//Turbine work
Wnet=Wcin-Wtout;//Net work done
COP=qL/Wnet;//Co-efficient of performance
Qref=m*qL;//Rate of refrigeration in kW

//OUTPUT
mprintf('Maximum temperature in the cycle is %3.0foC \n Minimum temperature in the cycle is %3.0foC \n COP is %3.2f \n Rate of refrigeration is %3.2f kW',Tmax,Tmin,COP,Qref)





//==============================END OF PROGRAM=================================
