// Chapter4
// Page.No-114
// Example_4_1
// Design of Compensating Network
// Given
clear;clc;
V=10 // Supply voltage
Vio=10*10^-3; // Input offset voltage
Rc=10; // Assumption
Rb=(V/Vio)*Rc;
printf("\n Resistance Rb is = %.f ohms \n",Rb) // Result
Ra=Rb/2.5; // Since Rb>Rmax,let us choose Rb=10*Rmax where Rmax=Ra/4
printf("\n Resistance Ra is = %.f ohms \n",Ra) // Result