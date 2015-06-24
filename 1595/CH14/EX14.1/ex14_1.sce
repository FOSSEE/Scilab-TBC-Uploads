//Antennas : example 14-1 : pg(669)
c=3*10^8;
f=150*10^6;
h=c/f;
x=1/2;
D=0.5*2;
Rff=5*D;
printf("\nThe wavelength (h) for a h/2 dipole at 150MHz is, \nh=c/f = %.f m/cycle",h);
printf("\nh/2 = 1m, which is the antennas dimension(D) \nD/h = 1/2 = %.1f",x);
printf("\n Rff = 5D = %.f m",Rff);
