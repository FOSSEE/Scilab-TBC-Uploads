// Example 17_9
clc;funcprot(0);
// Given data
m=60.0;// kg
m_bc=15.0;// kg
P=400;// W
V=15.0;// miles/h
g=9.81;// m/s^2

// Calculation
w=(m+m_bc)*9.81;// N
V=(V*1.609)*1000;// m/h
T=(P*3600)/(w*V);// The locomotion transport number
printf("\nThe locomotion transport number,T=%0.4f",T);
