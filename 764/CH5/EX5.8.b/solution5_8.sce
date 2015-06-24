
//Obtain path of solution file
path = get_absolute_file_path('solution5_8.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_8.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_8.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the bending moment at the notch B MB (N-mm)
MB = (Re * dist1) - (P * 1000 * fdist)
//Calculate the bending moment at the notch D MD (N-mm)
MD = Re * dist2
if (MB > MD) then
    Mb = MB
else
    Mb = MD
end
//Calculate Sf (N/mm2)
Sf = (32 * Mb)/(%pi * (d^3))
//Calculate Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Ka, Kb and Kc
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//From Fig. 5.24
//Ka = 0.79
//Calculate Kf
Kf = 1 + (q*(Kt - 1))
//Calculate Kd
Kd = (1/Kf)
//Calculate Se (N/mm2)
Se = Ka * Kb * Kc * Kd * Sdash
//Plot S-N Curve
funcprot(0)
[a, b, c, d] = SNplot(Sut,Se)
//Calculate the number of cycles N for given Sf
Sfval = log10(Sf)
Nval = d + (((c - d)/(a - b))*(Sfval - b))
N = 10^Nval
//Print results
printf('\nThe life of the shaft is %f cycles\n',N)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
printf('Use value of Ka from Fig.5.24 in order to obtain the mentioned result\n')
