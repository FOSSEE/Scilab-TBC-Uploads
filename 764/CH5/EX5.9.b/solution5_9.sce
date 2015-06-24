
//Obtain path of solution file
path = get_absolute_file_path('solution5_9.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_9.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_9.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])

[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//From Fig.5.24 
//Ka = 0.79
//Calculate rf/d ratio
ratio = rf/d
//Calculate the value of Kt using linear interpolation
for i = 1:1:2
    if (ratio > ratioVal(i)) then
        Kt = Ktval(i+1) + (((ratio - ratioVal(i+1))*(Ktval(i) - Ktval(i+1)))/(ratioVal(i) - ratioVal(i+1)))
        break
    end
end
//Calculate Kf
Kf = 1 + (q*(Kt - 1))
//Calculate Kd
Kd = (1/Kf)
//Calculate Se (N/mm2)
Se = Ka * Kb * Kc * Kd * Sdash
//Calculate the bending stress at the fillet sigmab (N/mm2)
sigmab = (32 * Mb * (10^6))/(%pi * (d^3))
//Plot S-N Curve
funcprot(0)
[a, b, c, z] = SNplot(Sut,Se)
//Calculate the number of cycles N for given Sf
Sfval = log10(sigmab)
Nval = z + (((c - z)/(a - b))*(Sfval - b))
N = 10^Nval
//Print results
printf('\nThe life of the shaft is %f cycles\n',N)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
