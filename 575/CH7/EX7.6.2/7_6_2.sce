clc
pathname=get_absolute_file_path('7_6_2.sce')
filename=pathname+filesep()+'762.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Qdot=basis*(x*Hout1+(1-x)*Hout2-x*Hin1-(1-x)*Hin2)
printf(" \n Heat required=%f KJ/Kg",Qdot/basis)