clear ;
clc;
// Example 9.8
printf('Example 9.8\n\n');
printf('Page No. 275\n\n');

//given
A = 10;// in m^2
S = 0.77;
Sa = 0.54;
//for South
printf('\t\t\t SOUTH \n')
I1 = [200 185 165 155 165 185 200];// in W-m^2
I2 = [500 455 405 385 405 455 500];// in W-m^2
for i = [1:1:7]
A_G_S (i) = (A*I1(i)*S) + (A*I2(i)*Sa)
end

printf('The monthly peak cooling loads for the month March is %.0f W \n',A_G_S(1))
printf('The monthly peak cooling loads for the month April is %.0f W \n',A_G_S(2))
printf('The monthly peak cooling loads for the month May is %.0f W \n',A_G_S(3))
printf('The monthly peak cooling loads for the month June is %.0f W \n',A_G_S(4))
printf('The monthly peak cooling loads for the month July is %.0f W \n',A_G_S(5))
printf('The monthly peak cooling loads for the month Aug. is %.0f W \n',A_G_S(6))
printf('The monthly peak cooling loads for the month Sept. is %.0f W \n\n',A_G_S(7))

 //For east
 printf('\t\t\t EAST \n')
I3 = [110 150 180 190 180 150 110];// in W-m^2
I4 = [435 510 515 505 515 510 435];// in W-m^2
for j = [1:1:7]
A_G_E(j) = (A*I3(j)*S) + (A*I4(j)*Sa);
end
printf('The monthly peak cooling loads for the month March is %.0f W \n',A_G_E(1))
printf('The monthly peak cooling loads for the month April is %.0f W \n',A_G_E(2))
printf('The monthly peak cooling loads for the month May is %.0f W \n',A_G_E(3))
printf('The monthly peak cooling loads for the month June is %.0f W \n',A_G_E(4))
printf('The monthly peak cooling loads for the month July is %.0f W \n',A_G_E(5))
printf('The monthly peak cooling loads for the month Aug. is %.0f W \n',A_G_E(6))
printf('The monthly peak cooling loads for the month Sept. is %.0f W \n\n',A_G_E(7))

