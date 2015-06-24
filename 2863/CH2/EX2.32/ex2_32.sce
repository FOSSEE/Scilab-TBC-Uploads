//chapter 2
//part a
printf("\n");
c=3*10^8;
frequency=20*10^9;
lamda=c/frequency;
printf("the wavelength is %gm",lamda);
//part b
//Ae=G*(lamda)^2/4*pi
r=0.61;
Aep=(%pi)*r^2;
printf("\nthe effective physical aperture is %gm^2",Aep);
Ae=0.55*Aep;
Ga=(Ae*4*(%pi))/(lamda)^2;
Gdb=10*log10(Ga);
printf("\nthe antenna gain is %g",Ga);
printf("\nthe antenna gain in db is %gdb",Gdb);
