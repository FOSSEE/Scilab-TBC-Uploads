//Solution 3-12
WD=get_absolute_file_path('3_12_solution.sce');
datafile=WD+filesep()+'3_12_example.sci';
clc;
exec(datafile)
a_x = (V_1 - V_0) / t; //acceleration = rate of change of velocity  (horizontal)
a_x = a_x / 3.6 //converting acceleration to [m/s^2]
theta = atan(a_x / (g + a_z)) //angle made by free surface of water with horizontal [radians]
printf("Vertical rise at the back of the tank relative to the midplande is")
//Case 1:
deltaz_1 = b_1 / 2 * tan(theta);
printf("\n1.For long side parallel to direction of motion =%1.2f cm", deltaz_1 * 100);
//Case 2:
deltaz_2 = b_2 / 2 * tan(theta);
printf("\n2.For short side parallel to direction of motion =%1.2f cm", deltaz_2 * 100);
if(deltaz_2 < deltaz_1)
    printf("\n Hence short side must be parallel to the direction of motion.");
else
    printf("\n Hence long side must be parallel to the direction of motion ");
end
