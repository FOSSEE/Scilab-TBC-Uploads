//Wired Digital Communications : example 9-2 : (pg 407)
m=10^7;
Pe=10^-6;//error probability 
a=m*Pe;//average number of errors
printf("\naverage number of errors = m*error probability(Pe) \n= %.f",a);
mprintf("\n%.f expected bit errors if %.f million bits are recieved",a,a); 