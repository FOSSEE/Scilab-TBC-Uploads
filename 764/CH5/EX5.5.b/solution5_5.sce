
//Obtain path of solution file
path = get_absolute_file_path('solution5_5.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_5.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_5.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])

//Call fluctuate
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//Calculate Kf
Kf = 1 + (q * (Kt - 1))
//Calculate Kd
Kd = (1/Kf)
//Calculate the endurance limit stress for plate Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Se
Se = Ka * Kb * Kc * Kd * Sdash
//For axial load from equation 5.30 Sea (N/mm2)
Sea = 0.8 * Se
//Calculate permissible stress amplitude sigma (N/mm2)
sigma = Sea/fs
//Calculate the plate thickness t (mm)
t = (P * 1000)/(d * sigma)
//Print results
printf('\nThickness of the plate(t) = %f mm\n',t)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
