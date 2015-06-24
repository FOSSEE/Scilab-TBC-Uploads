clear
//Depends on data22_6.sci file
//Obtain path of solution file
path = get_absolute_file_path('Ex22_6.sce')
//Obtain path of data file
datapath = path + filesep() + 'data22_6.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the shrinkage pressure P (N/mm2)
P = sigmaMax * (D3^2 - D2^2)/(D3^2 + D2^2)
//Calculate the total change in the inner diameter of the jacket delta (mm)
delta = (P * D2/E)*((2* D2^2 * (D3^2 - D1^2))/((D3^2 - D2^2) * (D2^2 - D1^2)))
//Calculate the outer diameter of the inner tube od (mm)
od = D2
//Calculate the inner diameter of the jacket id (mm)
id = D2 - delta
//Print results
printf("Outer diameter of the inner tube(od) = %f mm \n",od)
printf("Inner diameter of the jacket(id) = %f mm \n",id)
