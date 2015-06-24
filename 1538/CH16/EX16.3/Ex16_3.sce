//example-16.3
//page no-495
//given
//young's modulus 
E=51*10^9  //Pa
//poisson's ratio
nu=0.22
//magnitude of burger's vector
b=2*10^-10  //m
//we know that shear modulus is given by
G=E/2/(1-nu)  //Pa
//elastic strain energy of dislocation in cold worked tin
Ue=1/2*G*b^2*10^12  //Pa m
//the strain energy in tin before cold working may be neglected as it is smaller by three orders of magnitude.
printf ("the change in energy during recrystallization is %f Pa m",Ue)
