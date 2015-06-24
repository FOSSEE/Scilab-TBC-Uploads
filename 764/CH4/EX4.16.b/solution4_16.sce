
//Obtain path of solution file
path = get_absolute_file_path('solution4_16.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_16.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible stresses for lever and pin sigmat (N/mm2)
sigmat = Syt/fs
//Calculate the yield strength in shear Ssy (N/mm2)
Ssy = (50/100)*Syt
//Calculate the permissible stress in shear tau (N/mm2)
tau = Ssy/fs
//Calculate force acting on the lever P (N)
P = (F * 1000 * l1)/l2
//Calculate the reaction at the fulcrum R (N)
R = sqrt(((F * 1000)^2) + (P^2))
//Calculate the diameter of the fulcrum pin df (mm)
df = (R/(p * rf))^(1/2)
//Calculate the length of the fulcrum pin lf (mm)
lf = df * rf
//Calculate the shear stress in pin tau1 (N/mm2)
tau1 = R/(2 * (%pi/4) * (df^2))
//Dimensions of the boss
//Inner diameter di (mm)
di = ceil(df)
//Outer diameter d0 (mm)
d0 = 2 * di
//Length l (mm)
l = ceil(lf)
//Dimensions of cross-section of lever 
//Calculate the maximum bending moment Mb (N-mm)
Mb = (F * 1000)*l1
//Assume the thickness b to be 1mm
b = 1
d = ratio * b
//Calculate the value of y (mm)
y = d/2
//Calculate second moment of area I (mm4)
I = (b * (d^3))/12
//Calculate the true value of b (mm)
b = ((Mb * y)/(sigmat * I))^(1/3)
//Calculate the width of lever cross-section d (mm)
d = ratio * b
//Print results
printf('\nDiameter of the fulcrum pin(df) = %f mm\n',df)
printf('\nLength of the fulcrum pin(lf) = %f mm\n',lf)
printf('\nForce to be applied at the long arm end(P) = %f mm\n',P)
printf('\nThickness of the cross-section of the lever(b) = %f mm\n',b)
printf('\nWidth of the cross-section of the lever(d) = %f mm\n',d)
