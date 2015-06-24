clc
k = 1.33 // die opening factor
l = 1200 // bend length in mm
sigma = 455 // ultimate tensile strength in N/mm^2
t = 1.6 // blank thickness in mm
w = 8*t // width of die opening in mm
F = k*l*sigma*t^2/w // bending force in N 
printf("\n bending force  = %0.2f kN", F/1000)
