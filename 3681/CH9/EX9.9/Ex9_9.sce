// Calculating the number of extra shunt field turns to neutralize the demagnetization
clc;
disp('Example 9.9, Page No. = 9.38')
// Given Data
p = 4;// Number of poles
Is = 140;// Current supplied by generator (in ampere)
Z = 480;// Number of armature conductors
mech_degree = 10;// Since brushes are given an actual lead of 10 degree
// Calculation of the extra shunt field turns to neutralize the demagnetization
Ia = Is+10;// Armature current (A).  Since field winding is shunt connected and takes a current of 10 ampere
alpha = p/2*mech_degree;// Angle of lead (in electrical degree)
disp('(a) Wave connected')
a= 2 // With wave winding number of parallel paths
ATa = Ia*Z/(a*2*p);// Armature mmf per pole (A)
ATad = ATa*2*alpha/180;;// Demagnetizing mmf per pole (A)
ATaq = ATa-ATad;// Cross magnetizing mmf per pole (A)
Extra_turns = ATad/10;// Extra turns required on the shunt field.  Since field winding is shunt connected and takes a current of 10 ampere
disp(Extra_turns,'Extra turns required on the shunt field =');
disp('(b) Lap connected')
a= p // With lap winding number of parallel paths
ATa = Ia*Z/(a*2*p);// Armature mmf per pole (A)
ATad = ATa*2*alpha/180;;// Demagnetizing mmf per pole (A)
ATaq = ATa-ATad;// Cross magnetizing mmf per pole (A)
Extra_turns = ATad/10;// Extra turns required on the shunt field.  Since field winding is shunt connected and takes a current of 10 ampere
disp(Extra_turns,'Extra turns required on the shunt field =');
//in book answers are 100 and 50 respectively.  The answers vary due to round off error
