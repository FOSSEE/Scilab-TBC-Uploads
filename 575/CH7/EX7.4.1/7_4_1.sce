clc
pathname=get_absolute_file_path('7_4_1.sce')
filename=pathname+filesep()+'741.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Hcap=U+P*Vcap*101.3
H=ndot*Hcap*10^3
printf(" \n Specific Enthalpy=%d J/mol",Hcap)
printf("\n Enthalpy of Helium=%E J/h",H)