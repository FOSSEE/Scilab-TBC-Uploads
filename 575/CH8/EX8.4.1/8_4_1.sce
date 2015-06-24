clc
pathname=get_absolute_file_path('8_4_1.sce')
filename=pathname+filesep()+'841.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook \n ")
Qdot=mdot*deltaHv/(M*60)
printf("Rate of Heat transfer=%f KW",Qdot)