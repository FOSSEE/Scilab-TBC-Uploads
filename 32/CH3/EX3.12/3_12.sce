//pathname=get_absolute_file_path('3.12.sce')
//filename=pathname+filesep()+'3.12-data.sci'
//exec(filename)
//Atmospheric pressure(in bar):
p=1.013
//Volume to which the baloon is inflated(in m^3):
v=0.4
//Work done by cylinder(in kJ):
w1=0
//Work done by the balloon(in kJ):
w2=p*10^5*v
//Total work(in kJ):
w=w1+w2
printf("\nRESULT\n")
printf("\nWork done by the system upon atmoshere = %f kJ",w/(10^3))
printf("\nWork done by the atmoshere = %f kJ",-w/(10^3))