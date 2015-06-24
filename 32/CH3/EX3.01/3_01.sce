//pathname=get_absolute_file_path('3.01.sce')
//filename=pathname+filesep()+'3.01-data.sci'
//exec(filename)
//Pressure in the gas cylinder(in kPa):
p=689
//Final volume(in m^3):
v2=0.045
//Initial volume(in m^3):
v1=0.04
//Work done by the paddle(in kJ):
Pw=-4.88
//Work done by the system on the piston(in kJ):
w=p*(v2-v1)
//Net Work of the system(in kJ):
wn=w+Pw
printf("\nRESULTS\n")
printf("\nWork done on the piston=%f kJ",w)
printf("\nWork done on the system=%f kJ",-wn)