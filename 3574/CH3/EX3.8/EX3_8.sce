// Example 3.8
// Determine the maximum allowable power that the open-delta bank handle 
// without overheating
// Page No. 117

clc;
clear;
close;

// Given data
S=25;                      // Transformer rating

// Capacity of the delta-delta bank is
Cddb=S*3;
// Capacity of the bank when operating open-delta is
Cob=Cddb*0.577;


// Display result on command window
printf("\n Capacity of the bank when operating open-delta is = %0.1f kVA ",Cob);
