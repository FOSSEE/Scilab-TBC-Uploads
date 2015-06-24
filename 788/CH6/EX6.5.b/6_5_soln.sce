clc;
pathname=get_absolute_file_path('6_5_soln.sce')
filename=pathname+filesep()+'6_5_data.sci'
exec(filename)

// Solution:
// Inclination of cylinder axis with vertical axis,
phi=(phi*%pi)/180; //rad
// cylinder force required to overcome load using First Class Lever Sytem,
F_cyl_1=(L2*F_load)/(L1*cos(phi)); //lb
// cylinder force required to overcome load using Second Class Lever Sytem,
F_cyl_2=(L2*F_load)/((L1+L2)*cos(phi)); //lb
// cylinder force required to overcome load using Third Class Lever Sytem,
F_cyl_3=((L1+L2)*F_load)/(L2*cos(phi)); //lb

// Results:
printf("\n  Results:  ")   
printf("\n The Cylinder Force using First Class lever System is %.0f lb.",F_cyl_1)
printf("\n The Cylinder Force using Second Class lever System is %.0f lb.",F_cyl_2)
printf("\n The Cylinder Force using Third Class lever System is %.0f lb.",F_cyl_3)





























