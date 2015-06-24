//5.5
clc;
emf_std_cell=1.0183;
emf_cell=70/50*emf_std_cell;
printf("e.m.f. of the cell=%.2f V",emf_cell)
V_read=1.35;
V_cal=1.32379;
error_voltmeter_percent=((V_read-V_cal)/V_cal)*100;
printf("\nPerentage error of the voltmeter=%.2f",error_voltmeter_percent)