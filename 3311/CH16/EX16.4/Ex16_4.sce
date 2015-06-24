// chapter 16
// example 16.4
// Determine dc supply voltage and charging current
// page-997
clear;
clc;
// given
num_cell=18; // number of cells
AH_output=90; // in AH (AH output per cell)
T=10; // in Hrs
charging_time=8; // in Hrs
AH_efficiency=85; // in %
V_cell=2.4; // in V (voltage per cell)
r=0.1; // in ohm (internal resistance of battery)
// calculate
// since AH_efficiency=AH_output/AH_input, therefore we get
AH_input=AH_output/(AH_efficiency/100); // calculation of input AH per cell
// since AH_input=charging_current*charging_time, therefore we get
charging_current=AH_input/charging_time; // calculation of charging current
V_total=num_cell*V_cell; // calculation of total terminal voltage of 18 cells
V_drop=r*charging_current; // calculation of voltage drop across internal resistance
Edc=V_total+V_drop; // calculation of dc supply voltage
printf("\nThe charging current is \t %.2f A",charging_current);
printf("\nThe dc supply voltage is \t %.3f V",Edc);
// Note: the answers vary slightly due to precise calculation