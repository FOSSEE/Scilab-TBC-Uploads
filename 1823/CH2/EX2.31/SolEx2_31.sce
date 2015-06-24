//Find the maximum allowable current iZ when the Zener diode is acting as a regulator
//Solved Example Ex2.31 page no 65
clear
clc
Vz=5.2          //V
Pdmax=260       //mW
iZmax=Pdmax/Vz  //mA
printf("iZmax = %0.3f mA",iZmax)
Vs=15
R=(Vs-Vz)*1000/iZmax
printf("\n R = %0.3f ohm",R)
