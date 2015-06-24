//Transmission Lines : example 12-2 : (pg 574 & 575)
a=2;//parallel wire line
//D/d where D is spacing between the wires n d is diameter of 1 conductor
b=2.35;//coaxial line
D=0.285;
d=0.08;
e=1;//dielectric constant of insulating material relative to air
z=(276/e)*log10(2*2);
z1=(138/e)*log10(b);
z2=(138/sqrt(2.3)*log10(D/d));
//part(a) Zo of parallel wire with D/d = 2
printf("\nZo = 276/sqrt(e).log10.(2D/d) = %.f Ohm",z);
//part(b) Zo of coaxial line with D/d = 2.35
printf("\nZo = 138/sqrt(e).log10.(D/d) = %.1f Ohm",z1);
//part(c) Zo of RG-8A/U coaxial cable with D=0.285 in. & d=0.08 in.
printf("\nZo = 138/sqrt(2.3).log10.(D/d) = %.f Ohm",z2);