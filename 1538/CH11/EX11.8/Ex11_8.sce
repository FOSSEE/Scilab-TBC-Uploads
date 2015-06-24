//example-11.8
//page no-370
//given
//crack length of glass piece
l=3*10^-6/2  //m divided by 2 because min general we consider 2*l be the length of crack
//young modulus
E=70*10^9  //Pa
//specific surface energy
gammae=1.05  ///J/m^2
//fracture strength
sigmaf=sqrt(2*E*gammae/(%pi)/l) //N/m^2
//ratio of strength and young's modulus
R=sigmaf/E   
printf ("fracture strength is %f N/m^2 \n and the ratio of strength and youngs modulus is %f ",sigmaf,R)
