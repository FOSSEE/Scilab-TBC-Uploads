////Given
E=9                             //Kinetic energy of a particle in ev
v0=10                           //ev
E1=5                            //ev
E2=15
E3=10                           //ev

//calculation
//
R=((sqrt(E2)-(sqrt(E2-v0)))/(sqrt(E2)+(sqrt(E2-v0))))**2
T=1-R

//Result
printf("\n (a) E1 < vo, therefore R=1, T=0")
printf("\n (b) reflection coefficient R=  %0.3f \n transmission coefficient T=  %0.3f ",R,T)
printf("\n (c) E3=v0, therefore R=1 , T=0")
