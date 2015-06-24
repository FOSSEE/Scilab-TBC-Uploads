clc
pathname=get_absolute_file_path('7_2_1.sce')
filename=pathname+filesep()+'721.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
u=Vdot*100^2 /(%pi*(ID/2)^2 *3600)
mdot=Vdot*10^3 /3600
Ek=mdot*u^2 /2
printf(" \n Ek=%f J/s",Ek)