
//Obtain the path of solution file
path = get_absolute_file_path('solution11_6.sce')
//Obtain the path of data file
datapath = path + filesep() + 'data11_6.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Step1: Clutch being brand new, apply uniform-pressure theory
//Consider torque transmission by one pair of contacting surfaces
Mt = Mt / 2
//Total force obtained from n springs
P = n * P
//Evaluate torque transmitting capacity Mtp (N-mm)
Mtp = (mu * P * ((D^3)-(d^3)))/(3 * ((D^2)-(d^2)))
//Evaluate corresponding factor of safety
fsp = Mtp / (Mt * 1000)
//Step2: Clutch subjected to initial wear, apply uniform-wear theory
//Assuming there is negligible change in spring force after wear
//Evaluate torque transmitting capacity Mtw (N-mm)
Mtw = (mu * P * (D + d))/4
//Evaluate corresponding factor of safety
fsw = Mtw / (Mt * 1000)
//Step3: Wear of friction lining before slippage
//Evaluate spring force required to transmit the torque(Mt) Pmax (N)
Pmax = (Mt * 4 * 1000)/(mu * (D + d))
//Evaluate force provided by each spring
Pmax = Pmax / n
//Evaluate stiffness of spring s (N/mm)
s = P / (delta * n)
//Evaluate allowable wear of friction lining x (mm)
x = delta - (Pmax / s) 
//Print results
printf('\nStep1: Clutch being brand new,') 
printf('applying uniform-pressure theory\n')
printf('\nFactor of safety(fsp) = %f\n',fsp)
printf('\nStep2: Clutch being subjected to initial wear,') 
printf('applying uniform-wear theory\n')
printf('\nFactor of safety(fsw) = %f\n',fsw)
printf('\nStep3: Allowable wear of friction lining(x) = %f mm\n',x)
