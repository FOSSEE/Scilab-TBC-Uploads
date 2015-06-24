//Transport Processes and Seperation Process Principles
//Chapter 7
//Example 7.4-1
//Principles of Unsteady state and convective mass transfer
//given data
Dp=100/(10^6);
Dab=3.25/(10^9);
muc=6.947/(10^4);
rhoc=994;
rhop=1.13;
Sc=(muc/(rhoc*Dab));
delrho=rhoc-rhop;
g=9.806;//gravity force
kdl=(2*Dab/Dp)+(0.31*(Sc^(-2/3))*(((delrho*muc*g)/(994*994))^(1/3)));
kl=kdl;//for dilute solutions
ca1=2.26/10000;
ca2=0;
Na=kl*(ca1-ca2);
mprintf("the rate of absorption is %f kg mol O2/s m2",Na)
