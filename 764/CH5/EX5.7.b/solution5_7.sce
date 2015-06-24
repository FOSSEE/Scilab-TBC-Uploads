
//Obtain path of solution file
path = get_absolute_file_path('solution5_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_7.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])

//Calculate Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Ka, Kb, Kc
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//From Fig.5.24
//Ka = 0.44
//Calculate Se (N/mm2)
Se = Ka * Kb * Kc * Sdash
//Plot S-N Curve
funcprot(0)
[a, b, c, d] = SNplot(Sut,Se)
//Calculate the number of cycles N for given Sf
Sfval = log10(Sf)
Nval = d + (((c - d)/(a - b))*(Sfval - b))
N = 10^Nval
//Print results
printf('\nThe life of the bar is %f cycles\n',N)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
