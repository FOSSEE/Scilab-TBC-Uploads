// chapter 16
// example 16.2
// Select a suitable battery
// page-996-997
clear;
clc;
// given
UPS_rating=20; // in kVA
backup_time=15; // in min
efficiency=85; // in %
PF=0.8; // (lagging power factor)
Edc1=147, Edc2=190; // in V (Battery voltage range)
V_cell=1.75; // in V (voltage per cell)
N=6; // in cell groups per jar
// calculate

Battery_kW=UPS_rating*PF/(efficiency/100); // calculation of battery power
num_cell=Edc1/V_cell; // calculation of number of cells
num_jar=num_cell/N; // calculation of number of jars
cell_size_kW=Battery_kW/num_cell // calculation of cell size
printf("\nThe battery power is \t %.2f kW",Battery_kW);
printf("\nThe number of cells is \t %.f",num_cell);
printf("\nThe number of jars is \t %.f",num_jar);
printf("\nThe cell size is \t %.3f kW",cell_size_kW);
printf("\n\nBased on this data, we can choose 90 A-H battery which has 0.255 kW discharge rate at %.f min back-up time",backup_time);