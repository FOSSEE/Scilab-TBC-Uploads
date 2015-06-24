
// Scilab Code Ex11.6: Page-418 (2014)
clc; clear;
r1 = 2.30e-002;    // Radius of inner edge of storing region of CD-ROM, m
r2 =5.80e-002;    // Radius of outer edge of storing region of CD-ROM, m
A = %pi*(r2^2 - r1^2);    // Area of the usable region of CD-ROM, Sq.m
N = 700e+006*8;    // Total number of bits in CD-ROM
APB = A/N;    // Area per bit of CD-ROM, Sq.m/bit
t = 1.6e-006;    // Track width of CD_ROM, m
l = APB/t;    // Bit length, m
printf("\nThe surface area of CD-ROM allowed for each data bit = %3.1e Sq.m/bit", APB);
printf("\nThe approx. dimensions of each bit along the track = %1.0f micro-metre", l/1e-006);

// Result
// The surface area of CD-ROM allowed for each data bit = 1.6e-012 Sq.m/bit
// The approx. dimensions of each bit along the track = 1 micro-metre 