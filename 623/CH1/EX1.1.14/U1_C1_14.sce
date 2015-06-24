//variable initialization
c=3*10^8;                                 //speed of light (meter/second)
u1=0.6*c;                                 //speed of Beta particle 1 in lab frame (meter/second)
u2=-0.8*c;                                //speed of Beta particle 2 in lab frame (meter/second)
v=u1;                                     //velocity of frame s' where frame s' is attached to the first Beta particle (meter/second)

//velocity of 2nd Beta particle relative to the 1st Beta particle(assuming frame s' is attached to the first Beta particle)
u2_dash=(u2-v)/(1-((u2*v)/c^2));          //velocity of 2nd Beta particle relative to the 1st Beta particle (meter/second)

printf("\n\tThe velocity of 2nd Beta particle relative to the 1st Beta particle = %.2e meter/second",u2_dash);
