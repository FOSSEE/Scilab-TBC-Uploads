//Problem 4.01: Eight cells, each with an internal resistance of 0.2 ohms and an e.m.f. of 2.2 V are connected (a) in series, (b) in parallel. Determine the e.m.f. and the internal resistance of the batteries so formed.

//initializing the variables:
R = 0.2; // in ohms
n = 8; // no. of cells
e = 2.2; // in volts

//calculation:
es = n*e
ep = e
Rs = n*R
Rp = R/n

printf("\n\nResult\n\n")
printf("\n(a)Resistance %.1f ohms",Rs)
printf("\n(a)e.m.f %.1f Volts(V)",es)
printf("\n(b)Resistance %.3f ohms",Rp)
printf("\n(b)e.m.f %.1f Volts(V)",ep)