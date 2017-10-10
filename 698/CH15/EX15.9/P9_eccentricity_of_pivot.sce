clc
//Example 15.9
// Eccentricity of pivot

//------------------------------------------------------------------------------
//Given Data:

theta=%pi/2
R=0.5/2

res9= mopen(TMPDIR+'9_eccentricity_of_pivot.txt','wt')

h=(4*R* sin(0.5*theta))/(sin(theta) + theta)
mfprintf(res9,'h=(4*R* sin(0.5*theta))/(sin(theta) + theta)\n')
mfprintf(res9,'h = %d mm',h* 1e3)

mclose(res9);
editor(TMPDIR+'9_eccentricity_of_pivot.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------