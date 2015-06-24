//chapter 19
//example 19.5
//page 603
clear;
clc ;
//given
Vo=13;//op voltage
Vcell=0.45;//cell voltage
Icell=57;//cell current in mA
//no of series connected cell 
Cs=ceil(Vo/Vcell);
//charge taken from batteries over 24hrs=charge delivered by cell
Q=24*0.5;//Ahr
//charging /op current 
Io=Q/12;
//total group of cell in parallel
Cp=round(1000*Io/Icell);
//total no of cells required
C=Cs*Cp;
printf("\ntotal no of cells required is %d",C)


