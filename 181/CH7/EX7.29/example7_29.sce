// Calculate Vo,Vi
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-29 in page 333

clear; clc; close;

// Given data
Idss=5*10^-3; // Drain-source current in mA
Vp=-4.5; // Pinch off voltage in V

// Calculation
printf("When Vi is zero:\n");
Vgs1=(-25.67+sqrt(25.67^2-(4*2.963*55)))/(2*2.963);
Vgs2=(-25.67-sqrt(25.67^2-(4*2.963*55)))/(2*2.963);
printf("(a)Vgs = %0.2f V or %0.2f V\n",Vgs1,Vgs2);
printf("Since the gate is connected to ground,Vo = -Vgs.Hence Vo = %0.2f V or %0.2f V\n",-Vgs1,-Vgs2);
printf("When Vo is zero:\n");
Id=5/(12*10^3);
Vgs=4.5*(0.288-1);
Vi=Vgs;
printf("(b)Vi = %0.1f V",Vi);

// Result
// (a) When Vi is zero, Vo = 4.78V or 3.88V
// (b) When Vo is zero, Vi = -3.2V