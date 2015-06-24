
clc
clear
//Input data
p1=20//pressure in bar
T1=300+273//Tempereture in K
p2=3//pressure in bar
m=0.3//Flow rate in kg/s
n=1.3//Adiabatic constant
Cd=0.98//Coefficient of discharge
Cv=0.92//Coefficient of velocity

//Calculations
vo=0.1255//Specific volume in m^3/kg
px=(0.546*p1)//Critical pressure in bar
vx=(p1/px)^(1/n)*vo//Critical specific volume in m^3/kg
Vx=sqrt(n*px*10^5*vx)//Critical velocity in m/s
Ax=((m*vx)/Vx)*10^6//Critical area in m^2
v1vo=(p1/p2)^(1/n)//Ratio of specific volumes
v1=(vo*v1vo)//Specific volume in m^3/kg
V1=sqrt(2*((n/(n-1))*10^5*((p1*vo)-(p2*v1))))//Velocity in m/s
A1=((m*v1)/V1)*10^6//Area in mm^2
ho=3050//Enthalpy in kJ/kg
hx=2920//Enthalpy in kJ/kg
h1s=2650//Enthalpy in kJ/kg
ws=(m/Cd)//Flow rate in kg/s
Vsx=44.72*sqrt(ho-hx)//Velocity in m/s
V1s=44.72*sqrt(ho-h1s)//Velocity in m/s
Vo1=(V1s*Cv)//Velocity in m/s
hoh1=(V1/44.72)^2//Change in enthalpy in kJ/kg
h1=ho-hoh1//Enthalpy in kJ/kg
x1=(h1-561.47)/2163.8//Dryness fraction
vo1=(0.001073+(x1*0.6047))//Specific volume in m^3/kg
Ao1=((ws*vo1)/Vo1)*10^6//Exit nozzle area in mm^2
Vox=(Vsx*Cv)//Velocity in m/s
hohx=(Vox/44.72)^2//Change in enthalpy in kJ/kg
hox=(ho-hohx)//Enthalpy in kJ/kg
vox=0.22//Specific volume in m^3/kg
Aox=((ws*vox)/Vox)*10^6//Critical area in m^2

//Output
printf('(a) Area of throat is %3.1f mm^2 \n Exit area is %3.1f mm^2 \n\n (b) Area of throat is %3.1f mm^2 \n Exit area is %3.1f mm^2',Ax,A1,Aox,Ao1)
//In textbook, Ao1 is given wrong.
