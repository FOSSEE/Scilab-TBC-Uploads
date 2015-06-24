//pathname=get_absolute_file_path('3.05.sce')
//filename=pathname+filesep()+'3.05-data.sci'
//exec(filename)
//Mass of the gas(in kg):
m=5
//Value of n in P*(V^n)=const:
n=1.3
//Initial pressure(in MPa):
p1=1
//Initial volume(in m^3):
v1=0.5
//Final pressure(in MPa):
p2=0.5
//Final volume(in m^3):
v2=v1*((p1/p2)^(1/n))
//Work done(in kJ):
w=(p2*v2-p1*v1)*10^3/(1-n)
//Change in internal energy(in kJ/kg):
du=1.8*(p2*v2-p1*v1)*10^3
//Heat interaction(in kJ):
Q=du+w
printf("\nRESULT\n")
printf("\nHeat interaction = %f kJ",Q)
printf("\nWork interaction = %f kJ",w)
printf("\nChange in internal energy = %f kJ",du)