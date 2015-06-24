clc();
clear;
//Given :
p_rms = 0.0002; // in microbar
p_rms1 = 20; // in pascal
v = 343; // speed of sound in m/s
rho_0 = 1.21; // density of air in kg/m^3
f = 1000; // frequency in Hz
// p_rms = pm_min/(2)^0.5
//1 microbar = 0.1 N/m^2
pm_min = sqrt(2)*p_rms*0.1; //in N/m^2
// 1 pascal = 1 N/m^2
pm_max =sqrt(2)*p_rms1*1; // in N/m^2
// sm = pm/(v*rho_0*omega);
//omega = 2*pi*f
sm_min = pm_min/(v*rho_0*2*%pi*f); // displacement amplitude in m
sm_max = pm_max/(v*rho_0*2*%pi*f);// displacement amplitude in m
printf("Minimum displacement amplitude = %.2f  pm \n",sm_min*10^12);
printf("Maximum displacement amplitude = %.0f mu m",sm_max*10^6);
