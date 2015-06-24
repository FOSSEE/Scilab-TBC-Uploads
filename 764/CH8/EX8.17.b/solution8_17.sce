
//Obtain path of solution file
path = get_absolute_file_path('solution8_17.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_17.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions8_17.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the limit stress for the weld Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Ka, Kb and Kc
funcprot(0)
[Ka, Kb, Kc, Kf] = fluctuate(op, d, reliability)
//From Fig.5.24
//Ka = 0.52
//Calculate the value of Kd
Kd = 1/Kf
//Calculate the endurance limit of the butt weld Se (N/mm2)
Se = Ka * Kb * Kc * Kd * Sdash
//Calculate the permissible stress amplitude sigmat (N/mm2)
sigmat = Se/fs
//Calculate the length of the weld l (mm)
l = (P * 1000)/(d * sigmat)
//Print results)
printf('\nThe length of the weld(l) = %f mm\n',l)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
