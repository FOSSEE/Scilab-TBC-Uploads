// chapter 16
// example 16.5
// Calculate back-up time and charger peak output power
// page-997-998
clear;
clc;
// given
VA_rating=6; // in kVA
V=230; // in V
E=144; // in V
PF=0.8;
neta=0.85; // invertor efficiency
AH_rating=500; // in AH
E1=10.6, E2=13.4; // in V (range of battery voltage)
E_normal=12; // in V (normal battery voltage)
T=4; // in Hrs (charging time)
t=8; // in Hrs
capacity_derating=0.5;
// calculate
VA_rating=VA_rating*1E3;
Battery_kW=VA_rating*PF/neta; // calculation of battery power
num_Battery=E/E_normal; // calculation of number of batteries
// considering worst case for calculation of discharge current
Total_battery_voltage=E1*num_Battery; // calculation of total battery voltage
// since Battery_kW=Total_battery_voltage*I_dc, therefore we get,
I_dc=Battery_kW/Total_battery_voltage; // calculation of battery discharge current 
T_backup=AH_rating*capacity_derating/I_dc; // calculation of back-up time
Ic=AH_rating*capacity_derating/T; // calculation of charging current
P_peak=E*Ic; // calculation of charging peak power
printf("\nThe back-up time is \t\t %.3f hours",T_backup);
printf("\nThe charging peak power is \t %.f kW",P_peak*1E-3);
// Note : There is calculation mistake in the book while calculating T_backup. Thats why answer in the book is wrong