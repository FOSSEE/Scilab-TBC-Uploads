clc
K = 1.20 // die-opening factor
L = 37.5 // Length of strip in cm
T = 2.5 // thickness of strip in mm
sigma_ut = 630 // tensile strength in N/mm^2
W = 16*T // width of die opening in mm
F = (K*L*10*sigma_ut*T^2)/W // bending force in N
printf("\n bending force = %0.1f KN" , F/1000)
