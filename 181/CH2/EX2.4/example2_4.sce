// Barrier potential for silicon junction
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-4 in page 84

clear; clc; close;

// Given data
t=[70 0]; // Declaring the variables
t1=25; // Given temperature in K

// Calculation
alp=[1 2];
for i=1:2
delta_V=-0.002*(t(i)-t1);
Vb=0.7+delta_V;
printf("(%0.0f)delta_V at %d degrees = %0.2f V\n",alp(i),t(i),delta_V);
printf("Thus the barrier potential at %d degress = %0.2f V\n",t(i),Vb);
end

// Result
// (a) Barrier potential at 70 degrees is 0.61 V
// (b) Barrier potential at 0 degrees is 0.75 V