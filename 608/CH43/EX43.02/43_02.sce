//Problem 43.02: Two circuits have a mutual inductance of 600 mH. A current of 5 A in the primary is reversed in 200 ms. Determine the e.m.f. induced in the secondary, assuming the current changes at a uniform rate.

//initializing the variables:
M = 600E-3; // in Henry
Ia = 5; // in amperes
dt = 0.2; // in secs

//calculation:
//change of current
dIa = 2*Ia 
dIadt = dIa/dt
//secondary induced e.m.f., E2
E2 = -1*M*dIadt

printf("\n\n Result \n\n")
printf("\n secondary induced e.m.f., E2 is %.0f V",E2)