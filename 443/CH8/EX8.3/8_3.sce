pathname=get_absolute_file_path('8_3.sce')
filename=pathname+filesep()+'8_3_data.sci'
exec(filename)
//Actual volume of air sucked in per second(in m^3/s)
V=nv*Vcyl*(N/2)*(1/60)
//Volume flow at atmospheric conditions(in m^3/s)
V1=V/2
//Mass flow at atmospheric conditions(in kg/s)
ma=(pa/(R*Ta))*(V1)
//Pressure at throat(in bar)
p2=(1-C2^2/(2*Cp*Ta))^(y/(y-1))*pa
//Volume flow at choke
V2=V1*(pa/p2)^(1/y)
//Nominal choke area(in cm^2)
A2=V2/(C2*Cda)*10^4
//Diameter of choke tube when diameter of emulsion tube is one third that of choke tube
D=sqrt((A2*4*9)/(8*%pi))
//Mass flow of fuel(in kg/s)
mf=ma/AF
//Area of main jet(in cm^2)
Af=mf/(Cdf*sqrt(2*Pf*(pa-p2-g*h*Pf)))*10^4
//Diameter of main jet(in cm)
d=sqrt((Af*4)/%pi)
printf("\n\nRESULTS\n\n")
printf("\nActual volume of air sucked:%f\n",V)
printf("\nmass flow at atmospheric conditions:%f\n",ma)
printf("\npressure at throat:%f\n",p2)
printf("\nVolume flow at choke:%f\n",V2)
printf("\nNominal choke area:%f\n",A2)
printf("\nDiameter of choke tube:%f\n",D)
printf("\nArea of main jet:%f\n",Af)
printf("\nDiameter of main jet:%f\n",d)