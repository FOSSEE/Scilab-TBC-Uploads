//Speed and pressure//
pathname=get_absolute_file_path('06.04.sce')
filename=pathname+filesep()+'06.04-data.sci'
exec(filename)
//Speed of water at exit(in m/sec):
V2=sqrt(2*g*z)
//Pressure at point A in the flow(kPa):
pA=p1+d*g*(0-l)-0.5*d*V2^2
printf("\n\nRESULTS\n\n")
printf("\n\nSpeed of water at exit: %.3f m/sec\n\n",V2)
printf("\n\nPressure at point A in the flow: %3f kPa\n\n",pA/1000)
