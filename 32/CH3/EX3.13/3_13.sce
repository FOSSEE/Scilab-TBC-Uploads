//pathname=get_absolute_file_path('3.13.sce')
//filename=pathname+filesep()+'3.13-data.sci'
//exec(filename)
//Heat added(in J/s):
Qa=5000
//Turbine work(in J/s):
Wt=0.25*Qa
//Heat rejected(in J/s):
Qr=0.75*Qa
//Work by feed pump(in J/s):
Wp=0.002*Qa
//Capacity of generator(in W):
C=Wt-Wp
printf("\nRESULT\n")
printf("\nCapacity of generator = %f kW ",C/(10^3))