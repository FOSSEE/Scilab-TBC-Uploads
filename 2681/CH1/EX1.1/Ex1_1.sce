//calculate the electric field,its magnitude and direction.
//given
F=[2 1 1]//force vector in newton
Q=1//charge in columbs
E=F/Q//the electric field
//the magnitude of this field is given by:
e=norm(E)
//THE direction of the electric field is given by:
aE=E/e
e=round(e*1000)/1000//rounding off decimals
aE=round(aE*1000)/1000//rounding off decimals
disp(E,'the electric field is given by:' )//N/C
disp(e,'the magnitude of the electric field E:')//V/m
disp(aE,'THE direction of the electric field in x,y,z axis respectively :')



