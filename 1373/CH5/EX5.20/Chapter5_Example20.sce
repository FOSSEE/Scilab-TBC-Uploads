//Chapter-5, Example 5.20, Page 206
//=============================================================================
clc
clear


//INPUT DATA
k=0.175;//Thermal conductivity in W/m.K
a=(0.833*10^-7);//Thermal diffusivity in m^2/h
Th=144;//Heated temeparture in degree C
Tc=15;//Cooled temperature in degree C
x=0.02;//Thickness of the plate in m
h=65;//Heat transfer coefficient in W/m^2.K
t=(4*60);//Tiem elapsed in s

//CALCULATIONS
s=0.002;//Space increment in m from FIg. Ex. 5.20 on page no. 207
t1=(s^2/(2*a));//Time increment for the space increment in s
x1=(k/h);//Convective film thickness in mm
Tn=114;//Temperature at the centre in degree C from Fig. Ex.5.20 on page no. 207
Ts=50;//Surface temperature in degree C from Fig. Ex.5.20 on page no. 207

//OUTPUT
mprintf('Temperature at the centre is %i degree C \nSurface temperature is %i degree C',Tn,Ts)

//=================================END OF PROGRAM==============================
