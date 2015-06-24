//Problem 21.09: A separately-excited generator develops a no-load e.m.f. of 150 V at an armature speed of 20 rev/s and a flux per pole of 0.10 Wb. Determine the generated e.m.f. when (a) the speed increases to 25 rev/s and the pole flux remains unchanged, (b) the speed remains at 20 rev/s and the pole flux is decreased to 0.08 Wb, and (c) the speed increases to 24 rev/s and the pole flux is decreased to 0.07 Wb.

//initializing the variables:
E1 = 150; // in Volts
n1 = 20; // in rev/sec
Phi1 = 0.10; // in Wb
n2 = 25; // in rev/sec
Phi2 = 0.10; // in Wb
n3 = 20; // in rev/sec
Phi3 = 0.08; // in Wb
n4 = 24; // in rev/sec
Phi4 = 0.07; // in Wb

//calculation:
//generated e.m.f., E proportional to phi*w and since w = 2*pi*n, then
// E proportional to phi*n
// E1/E2 = Phi1*n1/(Phi2*n2)
E2 = E1*Phi2*n2/(Phi1*n1)
E3 = E1*Phi3*n3/(Phi1*n1)
E4 = E1*Phi4*n4/(Phi1*n1)

printf("\n\n Result \n\n")
printf("\n (a)the generated e.m.f is %.1f V ",E2)
printf("\n (b)generated e.m.f. is %.0f V ",E3)
printf("\n (c)generated e.m.f. is %.0f V ",E4)