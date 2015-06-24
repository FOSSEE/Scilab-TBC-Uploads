//Antennas : example 14-3 : pg(671)
Pt=10;//transmitted power
//dipoles have gain 2.15dB 
Gr=10^(2.15);//recieving antenna gain(ratio) compared to isotropic radiator
Gt=Gr;//transmiting antenna gain(ratio) compared to isotropic radiator
Gr=1.64;
c=3*10^8;//velocity of light
f=144*10^6;//frequency
d=50*10^3;//distance between antennas
x=c/f;//wavelength
y=x^2;
z=Pt*Gt*Gr*y;
a=(16*(%pi)^2);
b=a*(d^2);
Pr=z/b;//power recieved
printf("\nPr = Pt.Gt.Gr.h^2/16.pi^2.d^2 = %.12f W",Pr);
