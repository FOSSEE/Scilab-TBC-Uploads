clear;
clc;
printf("\n Example 1.6");
//To calculate mass flow of the dust emitted
mass_1=10;//in percentage in the size range of 0-5um
mass_2=15;//in percentage in the size range of 5-10um
mass_3=35;//in percentage in the size range of 10-20um
mass_4=20;//in percentage in the size range of 20-40um
mass_5=10;//in percentage in the size range of 40-80um
mass_6=10;//in percentage in the size range of 80-160um
efficiecny_1=20;//in percentage in the size range of 0-5um
efficiency_2=40;//in percentage in the size range of 5-10um
efficiency_3=80;//in percentage in the size range of 10-20um
efficiency_4=90;//in percentage in the size range of 20-40um
efficiency_5=95;//in percentage in the size range of 40-80um
efficiency_6=100;//in percentage in the size range of 80-160um
dust_burden=18;//in g/m^3 at the entrance
//taking 1m^3 as the basis of calculation
total_mass_retained=18*(0.1*0.20+0.15*0.40+0.35*0.80+0.2*0.9+0.1*0.95+0.1*1);
printf("\ntotal mass retained =%fg",total_mass_retained);
total_efficiency=(total_mass_retained/18)*100;
printf("\ntotal efficiency is =%f",total_efficiency);
total_mass_emitted=18-total_mass_retained;
printf("total mass emitted is:%fg",total_mass_emitted);
t=18*(0.1*0.80+0.15*0.60+0.35*0.20);
printf("\ntotal mass emitted less than 20um is %fg",t);
e=t*100/total_mass_emitted;
printf("\nThe efficiency of particles emitted is %f",e);
//gas flow is 0.3m^3/sec
f=0.3*total_mass_emitted;
printf("\nmass flow rate is:%fkg/sec",f);
 



