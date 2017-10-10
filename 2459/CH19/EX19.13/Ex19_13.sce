//chapter19
//example19.13
//page424

Vt=110 // V
Vc=100 // V

// since Pt/Pc=1+m^2/2 and P is proportional to V^2 we get (Vt/Vc)^2=1+m^2/2
// making m as subject we get

m=(2*((Vt/Vc)^2-1))^0.5

printf("modulation factor = %.3f or %.3f percent \n",m,m*100)
