//consider the combustion chamber condition as reservoir
Po=20*1.01*10^5;//combustion chamber pressure in N/m^2
To=3144;//combustion chamber temperature in Kelvin
R=378;//gas constant for mixture of kerosene and oxygen
y=1.26;//specific heat ratio
Pe=1*1.01*10^5//pressure at exit of rocket Nozzle in N/m^2
At=0.1;//throat area in m^2
Te=To*(Pe/Po)^((y-1)/y) //temperature at exit in degree kelvin
Me=sqrt(2*((To/Te)-1)/(y-1)) //mach no. at the exit
Ae=sqrt(y*R*Te) //speed of sound at exit,m/s
Mt=1;//Mach no. at throat
Pt=Po/(1+(y-1)*Mt^2/2)^(y/(y-1)) //pressure at throatin N/m^2
Tt=To/(1+(y-1)*Mt^2/2) //temperature at throat in Kelvin
Dt=Pt/(R*Tt) //density of gas in throat,Kg/m^3
Vt=sqrt(y*R*Tt) //speed of sount in throat which is equivalent to gas speed as mach no. at throat is 1.

