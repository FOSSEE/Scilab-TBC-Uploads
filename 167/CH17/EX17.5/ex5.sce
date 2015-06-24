//ques5
//Effect of Back Pressure on Mass Flow Rate
clear
clc
T=873;//Temperature in K
V=150;//velocity in m/s
Cp=1.005;//specific heat at constant pressure in kJ/kg.K
T0=T+V^2/(2*Cp)/1000;//Temperaure in K
P=1;//pressure in MPa
k=1.4;
P0=P*(T0/T)^(k/(k-1));//pressure in MPa
//The critical-pressure ratio is determined from Table 17–2 (or Eq. 17–22) to be P*/P=0.5283
Pb=0.7;//back pressure in MPa
Rbw=Pb/P0;//back pressure ratio
//which is greater than the critical-pressure ratio, 0.5283. Thus the exit plane pressure (or throat pressure P) is equal to the back pressure in this case
//From Table A–32 Pt/P0=0.670 and Tt/T0=0.892 
T0=884;//Temperature in K
Tt=0.892*T0;//Temp in K
Pt=700;//kPa
R=0.287;
dt=Pt/(R*Tt);//density in kg/m^3
Ma=0.778;//Mach no
k=1.4;
Vt=Ma*sqrt(k*R*Tt*1000);//Velocity in m/s
At=50*10^-4;;//area in m^2
ms=dt*At*Vt;
printf('(a) Mass flow rate = %.2f kg/s \n',ms);
//(b)
Pb=400;//kPa
P0=1045;//kPa
Rbp=Pb/P0;//The back pressure ratio
ms=At*P0*sqrt(k/(R*T0)*1000)*((2/(k+1))^((k+1)/(2*(k-1))));//multiply by 1000 to convert it into kg/s
printf(' (b) Mass flow rate = %.2f kg/s \n',ms);
