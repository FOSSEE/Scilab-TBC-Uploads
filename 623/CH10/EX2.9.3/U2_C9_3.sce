//variable initialization
r=0:.01:1;
r0=0;
r1=1;

//calculation
P=4*integrate('r^2*exp(-2*r)','r',r0,r1);

printf("\n Probability = %.2f",P);
