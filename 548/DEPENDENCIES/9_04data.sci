//consider a rocket engine burning hydrogen and oxygen.
Po=25*1.01*10^5;//pressure at combustion chamber(N/m^2)
To=3517;//temperature of combustion chamber(K)
A=0.1;//area of rocket nozzle(m^2)
Pe=1.1855*10^3;//exit pressure(N/m^2) at standard altitude of 30 Km
y=1.22;//specific heat ratio of the gas mixture
g=9.8;
M=16;//Molecular weight of gas mixture
Ru=8314;//universal gas constant(J/Kg.K)
R=8314/16 //specicific gas constant for this mixture
//specific impulse Isp:
Isp=sqrt(2*y*Ru*To*[1-(Pe/Po)^((y-1)/y)]/((y-1)*M))/g
//mass flow through engine(Kg/s):
Mdot=(Po*A/sqrt(To))*sqrt(y*(2/(y+1))^((y+1)/(y-1)) /R)
Te=To*(Pe/Po)^((y-1)/y) //exit temperature in Kelvin
Cp=y*R/(y-1) //specific heat at constant pressure for the gas mixture
Ve=sqrt(2*Cp*(To-Te)) //velocity at exit of exhaust gas(m/s)
De=Pe/(R*Te) //exit density(Kg/m^3)

