//Tension//
filename=pathname+filesep()+'4.08-data.sci'
exec(filename)
//Tension required to pull the belt(in lbf):
T=Vbelt*m/32.2
printf("\n\nRESULTS\n\n")
printf("\n\nTension required to pull the belt: %.3f lbf\n\n",T)
