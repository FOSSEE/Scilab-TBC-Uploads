//pathname=get_absolute_file_path('3.16.sce')
//filename=pathname+filesep()+'3.16-data.sci'
//exec(filename)
//Initial pressure(in MPa):
pi=0.5
//Initial volume(in m^3):
vi=0.5
//Final pressure(in MPa):
pf=1
//Atmospheric pressure(in Pa):
patm=1.013*10^5
//Final volume(in m^3):
vf=3*vi
//Work done(in J):
W=(vf-vi)*(pi+pf)*10^5/2
printf("\nRESULT\n")
printf("\nWork done = %d J",W)