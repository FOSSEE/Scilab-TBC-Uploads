clear;
clc();

// To find out heat loss through 1 sq. ft of flat slab of 85%magnesia and 15% asbestos 

km=0.0377;               // Mean thermal conductivity at 220degF
t1=260;                  // Inner surface temperature of slab in degF 
t2=180;                  // Outer surface temperature of slab in degF
A=1;                     // Area of slab in ft
x=2/12;                  // Thickness of insulation in ft

q=km*A*(t1-t2)/x;        // Heat loss through slab in Btu/hr
printf("\n Heat loss through flat slab is %.1f Btu/hr",q);
