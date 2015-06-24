clc;
pathname=get_absolute_file_path('3_11_soln.sce')
filename=pathname+filesep()+'3_11_data.sci'
exec(filename)

// Solution:
// Acceleration due to gravity,
g=32.2; //ft/s^2
// Assuming ideal fluid, Jet velocity,
v2=sqrt(2*g*h); //ft/s
// Area of the opening,
A=(%pi/4)*((d/12)^2); //ft^2
// flow rate,
Q=A*v2; //ft^3/s
Q_gpm=floor(449*Q); //gpm
// Jet velocity considering friction losses,
v2l=sqrt(64.4*(h-Hl)); //ft/s
// since, flow rate is proportional to velocity,
Ql=((v2l/v2)*Q_gpm); //gpm

// Results:
printf("\n  Results:  ")  
printf("\n The Jet velocity is %.1f ft/s.",v2)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")
printf("\n The Flow rate is %.0f gpm.",Q_gpm)
printf("\n The Jet velocity considering friction losses is %.1f ft/s.",v2l)
printf("\n The Flow rate considering friction losses is %.0f gpm.",Ql)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")
