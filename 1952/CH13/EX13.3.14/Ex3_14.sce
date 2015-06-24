// Additional solved numerical questions  , Example(set 3) 14 , pg 358
Er1=1.0000684     //Dielectric constant   (for sum 14_a_2)
N=2.7*10^25     //(in atoms/m^3)
E0=8.85*10^-12   //permittivity of free space   (in F/m)
Er2=6      //dielectric constant  (for sum 14_a_3)
E=100    //electric field intensity  (in V/m)    (for sum  14_a_3)
A=200*10^-4    //area   (in m^2)
Er3=3.7    //dielectric constant     (for sum 14_b_2)
d=10^-3    //thickness   (in m)
V=300   //electric potential   (in V)
Alpha_e=(E0*(Er1-1))/N    //electronic polarization
R=(Alpha_e/(4*%pi*E0))^(1/3)   //radius of atom
P=E0*(Er2-1)*E    //polarization
C=(E0*Er3*A)/d    //capacitance
E1=V/d       //electric flux density
printf("Electronic polarization (in F*m^2)")
disp(Alpha_e)
printf("Radius of He atom(in m)")
disp(R)
printf("polarization(in C/m^2)")
disp(P)
printf("capacitance(in F)")
disp(C)
printf("Electric flux density (in V/m)")
disp(E1)
