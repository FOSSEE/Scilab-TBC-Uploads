
//determine the emf induced in the secondry max value of flux density
f=50
N1=350
N2=800
E1=400
E2=(N2*E1)/N1
A=75e-4
Bm=E1/(4.44*f*A*N1)
disp('flux density='+string(Bm)+'wb/m^2')
