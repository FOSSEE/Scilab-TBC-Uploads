
//Obtain path of solution file
path = get_absolute_file_path('solution8_12.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_12.sci'
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
//Calculate the moment of inertia of weld1 about X-axis passing through the C.G. of the welds Ixx (mm4)
Ixx = ((l * (t^3))/12) + ((A/N) * ((w/2)^2))
//Calculate the moment of inertia of all the welds I (mm4)
I = N * Ixx
//Calculate the bending stress in the top weld sigmab (N/mm2)
sigmab = (P * 1000 * e * (w/2))/I
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
