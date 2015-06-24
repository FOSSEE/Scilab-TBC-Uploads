pathname=get_absolute_file_path('8_5.sce')
filename=pathname+filesep()+'8_5_data.sci'
exec(filename)
//Air fuel ratio when nozzle tip is neglected
AF=((Cda*Da^2)/(Cdf*Df^2))*sqrt(Pa/Pf)
//Air fuel ratio when the nozzle tip is taken into account
AFn=((Cda*Da^2)/(Cdf*Df^2))*sqrt(Pa/Pf)*sqrt(dp/(dp-Pf*g*hf*10^-5))
//Minimum air velocity or critical air velocity required to start fuel flow when nozzle tip is provided(in m/s)
Cmin=sqrt((2*g*hf*Pf)/Pa)
printf("\n\nRESULTS\n\n")
printf("\nAir-fuel ratio when nozzle tip is neglected:%f\n",AF)
printf("\nAir-fuel ratio when nozzle tip is taken into account:%f\n",AFn)
printf("\nminimum air velocity required to start fuel flow:%f\n",Cmin)

