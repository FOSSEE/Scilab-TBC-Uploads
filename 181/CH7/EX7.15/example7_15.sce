// Find Vo for given Vi
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-15 in page 323

clear; clc; close;

// Given data
Idss=5.6*10^-3; // Drain-source current in mA
Vp=-4; // Peak voltage in V
Vi=[0 10]; // Input voltage values in V

// Calculation
alp=[1 2];
for i=1:2
    Vg=(-2.8+sqrt(2.8^2-(4*0.35*5.6)))/(2*0.35);
    Id=(Vi(i)+12-Vg)/10;
    Vo=(10*Id)-12;
    printf("(%0.0f)For Vi = %d V, Vo = %0.1f V\n",alp(i),Vi(i),Vo);
end
printf("If Vo = 0,\n");
Vgs=4*(sqrt(0.214)-1);
printf("(3)Then Vi = Vgs = %0.2f V",Vgs);

// Result
// When Vi=0,Vo=4V
// When Vi=10,Vo=14V
// When Vo=0,Vi=-2.15V