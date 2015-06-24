clc
pathname=get_absolute_file_path('9_3_1.sce')
filename=pathname+filesep()+'931.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Hr=5*HCO2+6*HH2O-HC5H12
printf(" \n Heat of the rxn= %f KJ/mol",Hr)