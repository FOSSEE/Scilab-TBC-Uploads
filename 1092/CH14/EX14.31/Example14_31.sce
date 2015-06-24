// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-31

clear; clc; close; // Clear the work space and console.

// Given data
S = 500 ; // kVA rating of distribution transformer
// given data from ex.14-20
V_1 = 2300 ; // Primary voltage in volt
V_2 = 208 ; // Secondary voltage in volt
f = 60 ; // Frequency in Hz

// SC-test data
P_sc = 8200 ; // wattmeter reading in W
I_sc = 217.4 ; // Short circuit current in A
V_sc = 95 ; // Short circuit voltage in V

// OC-test data
P_oc = 1800 ; // wattmeter reading in W
I_oc = 85 ; // Open circuit current in A
V_oc = 208 ; // Open circuit voltage in V

LF_1 = 20 ; // Load fraction in percent
LF_2 = 40 ; // Load fraction in percent 
LF_3 = 80 ; // Load fraction in percent
LF_fl = 100 ; // rated load in percent
LF_4 = 125 ; // Load fraction in percent

LF1 = 0.2 ; // Load fraction 
LF2 = 0.4 ; // Load fraction 
LF3 = 0.8 ; // Load fraction 
LF4 = 1.25 ; // Load fraction 

PF1 = 0.7 ; // power factor
PF2 = 0.8 ; // power factor
PF3 = 0.9 ; // power factor
PF_fl = 1 ; // power factor
PF4 = 0.85 ; // power factor

t1 = 4 ; // period of operation in hours
t2 = 4 ; // period of operation in hours
t3 = 6 ; // period of operation in hours
t_fl = 6 ; // period of operation in hours
t4 = 2 ; // period of operation in hours

// Calculations
// case a
t = 24 ; // hrs in a day
P_c  = P_oc ; // wattmeter reading in W (OC test)
W_c = (P_c * t)/1000 ; // COre loss over 24 hour period

// case b
Psc = P_sc/1000 ; // wattmeter reading in W (SC test)
P_loss_1 = (LF1^2)*Psc ; // Power loss in kW for 20% Load
P_loss_2 = (LF2^2)*Psc ; // Power loss in kW for 40% Load
P_loss_3 = (LF3^2)*Psc ; // Power loss in kW for 80% Load
P_loss_fl = Psc ; // Power loss in kW for 100% Load
P_loss_4 = (LF4^2)*Psc ; // Power loss in kW for 125% Load

// energy loss in kWh
energy_loss1 = P_loss_1 * t1 ; // Enegry loss in kWh for 20% Load
energy_loss2 = P_loss_2 * t2 ; // Enegry loss in kWh for 40% Load
energy_loss3 = P_loss_3 * t3 ; // Enegry loss in kWh for 80% Load
energy_loss_fl = P_loss_fl * t_fl ; // Enegry loss in kWh for 100% Load
energy_loss4 = P_loss_4 * t4 ; // Enegry loss in kWh for 125% Load

// Total energy losses in 24hrs
W_loss_total = energy_loss1 + energy_loss2 + energy_loss3 + energy_loss_fl + energy_loss4 ;

// case c
P_1 = LF1*S*PF1 ; // Power output for 20% load
P_2 = LF2*S*PF2 ; // Power output for 40% load
P_3 = LF3*S*PF3 ; // Power output for 80% load
P_fl = S*PF_fl ; // Power output for 100% load
P_4 = LF4*S*PF4 ; // Power output for 125% load

Energy_1 = P_1*t1 ; // Energy delivered in kWh for 20%load
Energy_2 = P_2*t2 ; // Energy delivered in kWh for 40%load
Energy_3 = P_3*t3 ; // Energy delivered in kWh for 80%load
Energy_fl = P_fl*t_fl ; // Energy delivered in kWh for 100%load
Energy_4 = P_4*t4 ; // Energy delivered in kWh for 125%load

// Total energy delivered in 24hrs
W_out_total = Energy_1 + Energy_2 + Energy_3 + Energy_fl + Energy_4 ;

// case d
eta = W_out_total / (W_out_total + W_c + W_loss_total) * 100 ; // All-day efficiency

// Display the results
disp("Example 14-31 Solution : ");

printf(" \n a: Total energy core loss for 24hrs, including 2hours at no-load,");
printf(" \n    W_c = %.1f kWh \n ",W_c);

printf(" \n b: From SC test, equivalent copper loss at rated load = %.1f kW,  ",Psc);
printf(" \n    and the various energy losses during the 24 hr period are tabulated as :\n");

printf(" \n    _____________________________________________________________________________________");
printf(" \n    Percent Rated load \t Power loss(kW) \t Time period(hours) \t Energy loss(kWh)");
printf(" \n    _____________________________________________________________________________________");
printf(" \n\t\t%d \t  %f \t\t\t %d \t\t\t %.2f \n ",LF_1,P_loss_1,t1,energy_loss1);
printf(" \n\t\t%d \t  %f \t\t\t %d \t\t\t %.2f \n ",LF_2,P_loss_2,t2,energy_loss2);
printf(" \n\t\t%d \t  %f \t\t\t %d \t\t\t %.2f \n ",LF_3,P_loss_3,t3,energy_loss3);
printf(" \n\t\t%d \t  %f \t\t\t %d \t\t\t %.2f \n ",LF_fl,P_loss_fl,t_fl,energy_loss_fl);
printf(" \n\t\t%d \t  %f \t\t\t %d \t\t\t %.2f \n ",LF_4,P_loss_4,t4,energy_loss4);
printf(" \n    _____________________________________________________________________________________");
printf(" \n    Total energy load losses over 24hour period (excluding 2hrs at no-load)  =  %.2f ",W_loss_total);
printf(" \n    _____________________________________________________________________________________\n\n");

printf(" \n c: Total energy output over the 24 hour period is tabulated as : \n");

printf(" \n    _____________________________________________________________________________________");
printf(" \n    Percent Rated load \t PF \t kW \t Time period(hours) \t Energy delivered(kWh)");
printf(" \n    _____________________________________________________________________________________");
printf(" \n\t\t%d \t %.1f \t %.f \t\t %d \t\t\t %d ",LF_1,PF1,P_1,t1,Energy_1);
printf(" \n\t\t%d \t %.1f \t %.f \t\t %d \t\t\t %d ",LF_2,PF2,P_2,t2,Energy_2);
printf(" \n\t\t%d \t %.1f \t %.f \t\t %d \t\t\t %d ",LF_3,PF3,P_3,t3,Energy_3);
printf(" \n\t\t%d \t %.1f \t %.f \t\t %d \t\t\t %d ",LF_fl,PF1,P_fl,t_fl,Energy_fl);
printf(" \n\t\t%d \t %.1f \t %.f \t\t %d \t\t\t %d ",LF_4,PF4,P_4,t4,Energy_4);
printf(" \n    _____________________________________________________________________________________");
printf(" \n    Total energy required by load for 24hour period (excluding 2hrs at no-load)  =  %d ",W_out_total);
printf(" \n    _____________________________________________________________________________________\n\n");

printf(" \n d: All-day efficiency = %.1f percent",eta);

