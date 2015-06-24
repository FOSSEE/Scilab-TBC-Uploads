pathname=get_absolute_file_path('8_1.sce')
filename=pathname+filesep()+'8_1_data.sci'
exec(filename)
//Pressure at outlet(in bar)
p2=(1-(C2/Vc)^2/(2*Cp*T1))^(y/(y-1))*p1
//Volume at inlet(in m^3/kg)
v1=(R*T1)/(p1*10^5)*1000
//Volume at outlet(in m^3/kg)
v2=v1*(p1/p2)^(1/y)
//Throat area(in cm^2)
A2=(ma*v2)/(C2*60)*10^4
//Outlet diameter(in cm)
d2=sqrt((A2*4)/%pi)
//Change in air pressure(in bar)
dpa=p1-p2
//change in fuel pressure(in bar)
dpf=pd*dpa
//Area of orifice(in cm^2)
Af=(mf*10^4)/(60*Cf*sqrt(2*Pf*1000*dpf*10^5))
//Diameter of orifice(in mm^2)
df=sqrt((Af*4)/%pi)
printf("\n\nRESULTS\n\n")
printf("\nPressure at outlet:%f\n",p2)
printf("\nVolume at inlet:%f\n",v1)
printf("\nVolume at outlet:%f\n",v2)
printf("\nThroat area:%f\n",A2)
printf("\nOutlet diameter:%f\n",d2)
printf("\nChange in air pressure:%f\n",dpa)
printf("\nChange in fuel pressure:%f\n",dpf)
printf("\nArea of orifice:%f\n",Af)
printf("\nDiameter of orifice:%f\n",df)