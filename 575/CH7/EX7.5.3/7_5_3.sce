clc
pathname=get_absolute_file_path('7_5_3.sce')
filename=pathname+filesep()+'753.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("From Steam tables, ")
Hin=3201 //Kj/Kg
Hout=2675 //Kj/Kg
Ws= -mdot*(Hout-Hin)/3600
printf("Work delivered by Turbine to surroundings=%d Kw",Ws)