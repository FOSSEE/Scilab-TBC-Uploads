clc
//Example 26.6
//Permissible velocity

//------------------------------------------------------------------------------

//Given data
St=27.5* 10^6
rho=7000


res6=mopen(TMPDIR+'6_permissible_velocity.txt','wt')
mfprintf(res6,'St=rho*v^2\n')

V=sqrt(St/rho)

mfprintf(res6,'Neglecting bending in the rim, V=%0.1f m/s',V)


mclose(res6)
editor(TMPDIR+'6_permissible_velocity.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
