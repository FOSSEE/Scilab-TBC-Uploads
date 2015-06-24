//temperature and pressure//
pathname=get_absolute_file_path('3.04.sce')
filename=pathname+filesep()+'3.04-data.sci'
exec(filename)
//Assuming temperature varies linearly with altitude:
//Temperature gradient(in F/ft):
m=(T1-T2)/(z2-z1)
//Value of g/(m*R):
v=g/m/R/32.2
//Pressure at Vail Pass(in inches of Hg):
p12=p1*((T2+460)/(T1+460))^v
//Percentage change in density:
pc1=(p12/p1*(T1+460)/(T2+460)-1)*100
//Assuming density is constant:
//Pressure at Vail Pass(in inches of Hg):
p22=p1*(1-(g*(z2-z1)/(R*32.2)/(T1+460)))
//Percentage change in density:
pc2=0;
//Assuming temperature is constant:
//Pressure at Vail Pass(in inches of Hg):
p32=p1*%e^(-g*(z2-z1)/(R*32.2)/(T2+460))
//Percentage change in density:
pc3=(p32/p1*(T1+460)/(T1+460)-1)*100
//For an adiabatic atmosphere:
p42=p1*((62+460)/(80+460))^(k/(k-1))
//Percentage change in density:
pc4=(p42/p1*(T1+460)/(T2+460)-1)*100
printf("\n\nRESULTS\n\n")
printf("\n\n1) If temperature varies linearly with altitude\n\n")
printf("\n\n\tAtmospheric pressure at Vail Pass: %f inches of Hg\n\n",p12)
printf("\n\n\tPercentage change in density wrt Denver: %f percent\n\n",pc1)
printf("\n\n2) If density is constant\n\n")
printf("\n\n\tAtmospheric pressure at Vail Pass: %f inches of Hg\n\n",p22)
printf("\n\n\tPercentage change in density wrt Denver: %f percent\n\n",pc2)
printf("\n\n3) If temperature is constant\n\n")
printf("\n\n\tAtmospheric pressure at Vail Pass: %f inches of Hg\n\n",p32)
printf("\n\n\tPercentage change in density wrt Denver: %f percent\n\n",pc3)
printf("\n\n4) For an adiabatic atmosphere\n\n")
printf("\n\n\tAtmospheric pressure at Vail Pass: %f inches of Hg\n\n",p42)
printf("\n\n\tPercentage change in density wrt Denver: %f percent\n\n",pc4)
