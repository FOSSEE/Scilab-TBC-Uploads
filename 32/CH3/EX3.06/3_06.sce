//pathname=get_absolute_file_path('3.06.sce')
//filename=pathname+filesep()+'3.06-data.sci'
//exec(filename)
//Initial pressure(in MPa):
p1=1
//Final pressure(in MPa):
p2=2
//Initial volume(in m^3):
v1=0.05
//Value of n:
n=1.4
//Final volume(in m^3):
v2=v1*((p1/p2)^(1/n))
//Change in internal energy(in kJ/kg):
du=7.5*(p2*v2-p1*v1)*10^3
//Work done(in kJ):
w=(p2*v2-p1*v1)*10^3/(1-n)
//Heat interaction(in kJ):
Q=du+w
printf("\nRESULT\n")
printf("\nHeat interaction = %f kJ",Q)
printf("\nWork interaction = %f kJ",w)
printf("\nChange in internal energy = %f kJ",du)
//If 180 kJ heat transfer takes place:
//Work done(in kJ):
w2=180-du
printf("\nNew work = %f kJ",w2)