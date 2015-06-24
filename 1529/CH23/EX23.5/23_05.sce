//Chapter 23, Problem 5
clc;
f=60;                               //supply frequency
p=2/2;                              //pairs of poles
ns=(f/p)*60;                        //synchronous speed
s=2;                                //slip
nr=ns-((s*ns)/100);                 //rotor speed
printf("(a) synchronous speed = %d rev/min\n\n",ns);
printf("(b) Speed of the rotor = %d rev/sec\n\n",nr);
printf("(c) Frequency of the induced emf of the rotor = %.1f Hz\n\n",(ns-nr)/60);
