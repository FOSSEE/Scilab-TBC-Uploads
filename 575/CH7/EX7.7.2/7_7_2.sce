clc
pathname=get_absolute_file_path('7_7_2.sce')
filename=pathname+filesep()+'772.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
u2=sqrt(2*32.174*(-F-g*deltaZ/32.174))
Vdot=u2*%pi*(ID/2)^2 /144
t=V*0.1337/(Vdot*60)
printf("Total time taken=%f min",t)