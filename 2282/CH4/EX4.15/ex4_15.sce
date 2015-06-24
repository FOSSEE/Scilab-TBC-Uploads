// Example 4.15, page no-156
clear
clc

p=10000       //power fed to the antenna in W
ag=60          //Antenna gain
loss=2         //Power lossin feed system
adb=10*log10(p)
EIRP=adb+ag-loss
printf("Earth station EIRP = %ddB",EIRP)
