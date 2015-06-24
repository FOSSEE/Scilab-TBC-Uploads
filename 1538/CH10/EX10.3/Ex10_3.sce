//example-10.3
//page no-307
//given
//length of glass piece
l=1.1*10^3  //mm
//width of glass piece
b=225   //mm
//height or thicness of plate
h=10  //mm
//load
P=250  //N
//for a simply supported beam subjected to concentrated load in the middle  of its span,
M=P*l/4  //N mm
//and force
F=P/2  //N
//part(a)
//flexure strength
sigma=6*M/b/h^2  //N/mm^2
//part (b)
//shear strength
tau=3*F/2/b/h  //N/mm^2
//part (c)
P1=350  //N
M1=P1*l/4
//ineria
I=b*h^3/12  //mm^4
y=h/2  //mm
//the modulus of rupture  is given by
sigmar=M1*y/I
printf ("the flexture strength, shear strength and modulus of rupture are %f N/mm^2, %f N/mm^2 and %f N/mm^2 resp",sigma, tau, sigmar)
