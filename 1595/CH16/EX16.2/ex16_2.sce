//Microwaves and Lasers : example 16-2 : pg(755)
D=3;//diameter of microwave dish
k=0.6;//efficiency of reflector
c=2.997925*10^8;//velocity of light
f=10*10^9;//frequency
h=c/f;//wavelength
x=(%pi*D)^2;
y=(h^2);
a=k*(x/y);
Ap=10*log10(a);//powergain
B=(70*h)/D;//beamwidth
printf("\nAp(dBi)=10logk(pi.D)^2/(h^2)");
printf("\nh= c/f = %.3f m",h);
printf("\nAp(dBi) = %.2f dBi",Ap);
printf("\nbeamwidth = 70h/D = %.1f degrees",B);