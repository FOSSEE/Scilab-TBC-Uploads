//Heat addition//
filename=pathname+filesep()+'1.01-data.sci'
exec(filename)
//Heat added during the process(in kJ):
Q12=m*cp*(T2-T1)
printf("\n\nRESULTS\n\n")
printf("\n\nHeat added during the process: %f kJ\n\n",Q12/1000)
