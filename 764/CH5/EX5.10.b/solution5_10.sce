
//Obtain path of solution file
path = get_absolute_file_path('solution5_10.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_10.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_10.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])

//Calculate Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Ka, Kb and Kc
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//From Fig.5.24
//Ka = 0.78
//Caluclate Kf
Kf = 1 + (q*(Kt - 1))
//Calculate Kd 
Kd = (1/Kf)
//Calculate Se (N/mm2)
Se = Ka * Kb * Kc * Kd * Sdash
//Plot S-N Curve
funcprot(0)
[a, b, c, z] = SNplot(Sut,Se)
Nval = log10(N)
//Calculate Sf corresponding to N (N/mm2)
Sfval = a - (((a - b)*(Nval - c))/(z - c))
Sf = (10^Sfval)
//Calculate the value of actual d (mm)
d = ((32 * P * dist)/(%pi * Sf))^(1/3)
//Print results
printf('\nThe diameter of the beam(d) = %f mm\n',d)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
