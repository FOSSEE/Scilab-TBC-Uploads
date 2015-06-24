pathname=get_absolute_file_path('17_23.sce')
filename=pathname+filesep()+'17_23_data.sci'
exec(filename)
//Air standard efficiency
nas=1-(1/r^(y-1))
//Indicaed hermal efficiency
nith=nrel*nas
//Calorific value of fuel(in kJ/kgK)
CV=(3600)/(nith*isfc)
//Indicated power(in kW)
ip=(pim*10^5*L*0.25*%pi*D^2*0.5*N*K)/60000
//Fuel consumption(in kg/h)
Fc=isfc*ip
printf("\n\nRESULTS\n\n")
printf("\nCalorific value of the fuel:%f\n",CV)
printf("\nFuel consumption:%f\n",Fc)