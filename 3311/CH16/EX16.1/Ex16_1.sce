// chapter 16
// example 16.1
// Determine kVA rating of invertor, Wattage of the rectifier and A-H rating of  battery
// page-996
clear;
clc;
// given
Load=600; // in W
PF=0.8; // (lagging power factor)
efficiency=80; // in %
Edc=24; // in V
backup_time=30; // in min
// calculate
// since PF=Load/kVA_rating, therefore we get
kVA_rating=Load/PF; // calculation of kVA rating of invertor
wattage=kVA_rating*PF/(efficiency/100); // calculation of Wattage of the rectifier
Idc=kVA_rating/Edc; // calculation of dc current
AH_rating=Idc*backup_time/60; // calculation of A-H rating of  battery
printf("\nThe kVA rating of invertor is \t\t %.2f kW",kVA_rating*1E-3);
printf("\nThe Wattage of the rectifier is \t %.2f kW",wattage*1E-3);
printf("\nThe A-H rating of  battery is \t\t %.2f AH",AH_rating);
// The battery voltage is given as Edc=24 V but the author has  used Edc=48 V. Thats why the answer in the book for AH_rating is wrong.