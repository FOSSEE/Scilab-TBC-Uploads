clc
//this program is used to convert lb.ft/min^2 to kg.cm/s^2
pathname=get_absolute_file_path('2_3_1.sce')
filename=pathname+filesep()+'231.sci'
exec(filename)
Final=Initial*0.453593*100/(3.281*60*60)
//the calculations involved are conversion factors
disp("final=")
disp(Final); disp("kg.cm/s^2")