//example-11.11
//page 371
//given
E=72*10^9  //Pa
gammae=0.9  //J/m^2
sigmaf=17.5*10^6  //Pa
//as we know that
//sigmaf=sqrt(2*E*gammae/(%pi)/l) //N/m^2
//so
l=2*E*gammae/(%pi)/(sigmaf)^2*1000  //mm
//length of intenal crack
L=2*l  //m
printf ("length of crack on the outer surface is %f mm \n and length of crack internally %f mm",l,L)
