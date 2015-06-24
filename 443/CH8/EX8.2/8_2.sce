pathname=get_absolute_file_path('8_2.sce')
filename=pathname+filesep()+'8_2_data.sci'
exec(filename)
//swept volume(in m^3)
Vs=0.25*%pi*D^2*L*10^-6*k
//Volume sucked per second(m^3/s)
V=nv*Vs*(N/2)
//Mass of air sucked in per second(in kg/s)
ma=V*Pa
//Since initial temperature and pressure are not given problem has to be solved neglecting compressibility of air
//Suction at throat(in N/m^2)
dpa=(1/(2*Pa))*(ma/(Cd*A2))^2
printf("\n\nRESULTS\n\n")
printf("\nSwept volume:%f\n",Vs)
printf("\nVolume sucked in per second:%f\n",V)
printf("\nMass of air sucked in per second:%f\n",ma)
printf("\nSuction at throat:%f\n",dpa)

