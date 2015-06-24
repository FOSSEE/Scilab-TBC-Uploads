
//Obtain path of solution file
path = get_absolute_file_path('solution8_13.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_13.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Assume the throat of the welds to be 1mm t
t = 1
//Calculate the total area of the welds A (mm2)
A = N * l * t
//Calculate the primary shear stress in the welds tau1 (N/mm2)
tau1 = (P * 1000)/A
//Calculate the total moment of inertia of the welds about the X-axis I (mm4)
I = N * (t * (l^3))/12
//Calculate the bending stress in the welds sigmab (N/mm2)
sigmab = (P * 1000 * e * (l/2))/I
//Calculate the maximum shear stress tauMax (N/mm2)
tauMax = sqrt(((sigmab/2)^2) + (tau1^2))
//Calculate the actual throat of the welds t (mm)
t = tauMax/tau
//Calculate the leg of the weld h (mm)
h = t/0.707
hround = ceil(h)
//Print results
printf('\nThroat of the weld(t) = %f mm\n',t)
printf('\nLeg of the weld(h) = %f or %f mm\n',h,hround)
