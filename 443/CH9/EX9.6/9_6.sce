pathname=get_absolute_file_path('9_6.sce')
filename=pathname+filesep()+'9_6_data.sci'
exec(filename)
//Fuel consumed
mf=(P/k)*bsfc
//Volume flow rate of fuel
Vf=mf/(N/2)*(1/Pf)*10^6
//Change in volume
dv=Kcomp*(Vpb+Vin+Vpl)*(p2-p1)
//Plunger displacement volume
Vp=dv+Vf
//Pump work
Wp=0.5*(p2-p1)*10^5*dv*10^-6+(p2-pcyl)*10^5*Vf*10^-6
//Power lost in pumping the fuel
Ploss=(Wp/1000)*(N/2)
printf("\n\nRESULTS\n\n")
printf("\nPlunger displacement volume:%f\n",Vp)
printf("\nPower lost in pumping the fuel:%f",Ploss)