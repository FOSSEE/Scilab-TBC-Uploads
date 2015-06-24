clear
//Depends on data22_8.sci file
//Obtain path of solution file
path = get_absolute_file_path('Ex22_8.sce')
//Obtain path of data file
datapath = path + filesep() + 'data22_8.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Make radius array rad
rad = [D1/2, D2/2, D3/2];
//Calculate the tangential stress due to internal pressure sigmat1 (N/mm2)
//Store the results in sigmat1 array
//Radius varies from D1/2 to D3/2
sigmat1 = [];
count = 0;
for i = 1:1:3
    r = rad(i);
    count = count + 1;
    sigmat1(1,count) = ((Pi * D1^2)/(D3^2 - D1^2))*((D3^2/(4 * r^2)) + 1);
end
//Calculate the tangential stress due to shrinkage pressure for jacket sigmat2 (N/mm2)
//Store the results in sigmat2 array
//Radius varies from D2/2 to D3/2
//Assume the shrinkage pressure to be 1MPa P
P = 1;
sigmat2 = [];
count = 0;
for i = 2:1:3
    r = rad(i);
    count = count + 1;
    sigmat2(1,count) = ((P * D2^2)/(D3^2 - D2^2))*((D3^2/(4 * r^2)) + 1);
end
//Calculate the tangential stress due to shrinkage pressure for inner tube sigmat3 (N/mm2)
//Store the results in sigmat3 array
//Radius varies from D1/2 to D2/2
sigmat3 = [];
count = 0;
for i = 1:1:2
    r = rad(i);
    count = count + 1;
    sigmat3(1,count) = ((-1 * P * D2^2)/(D2^2 - D1^2))*((D1^2/(4 * r^2)) + 1);
end
//Calculate the shrinkage pressure P (MPa)
P = (sigmat1(1) - sigmat1(2))/(sigmat2(1) - sigmat3(1))
//Update sigmat2 and sigmat3 with exact values
sigmat2 = sigmat2.*P
sigmat3 = sigmat3.*P
//Calculate the total change in diameter delta (mm)
delta = (P * D2/E)*((2* D2^2 * (D3^2 - D1^2))/((D3^2 - D2^2) * (D2^2 - D1^2)))
//Calculate the inner diameter of the jacket id (mm)
id = D2 - delta
//Calculate the resultant stress sigmat4 (N/mm2)
//Inner tube
sigmat4i = sigmat1(1,1:2) + sigmat3
//Jacket
sigmat4j = sigmat1(1,2:3) + sigmat2
//Print results
printf("Shrinkage pressure(P) = %f N/mm2 \n",P)
printf("Inner diameter of the jacket(id) = %f mm \n",id)
printf("Lines are plotted in the curve due to the consideration of only 3 points")
//Plot all the tangential stresses in single plot
figure(1);
//Internal pressure
//xset("line style", 4)
//plot2d(rad, sigmat1, style = 6)
plot(rad, sigmat1, '-ro')
//Shrinkage pressure
//xset("line style", 3)
//plot2d([rad(1,1:2), rad(1,2:3)], [sigmat3, sigmat2], style = 7)
plot([rad(1,1:2), rad(1,2:3)], [sigmat3, sigmat2], '-bx')
//Resultant stress
//xset("line style", 5)
//plot2d([rad(1,1:2), rad(1,2:3)], [sigmat4i, sigmat4j], style = 2)
plot([rad(1,1:2), rad(1,2:3)], [sigmat4i, sigmat4j], '-m*')
title("Tangential stresses distribution")
xlabel("Radius(mm)")
ylabel("Tangential stress(N/mm2)")
legend('Due to internal pressure', 'Due to shrinkage pressure', 'Resultant stresses')

