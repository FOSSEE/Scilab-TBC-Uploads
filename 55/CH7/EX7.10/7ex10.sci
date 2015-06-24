n=6;   //number of times a fair coin is tossed and getting a heads is a success
p=1/2;  //probability of getting a heads
q=1/2 ; //probability of not getting a heads
P2=(factorial(6)/(factorial(6-2)*factorial(2)))*p^2*q^(6-2); 
disp(P2,'probability of getting exactly two heads (i.e k=2)')

P4=(factorial(6)/(factorial(6-4)*factorial(4)))*p^4*q^(6-4); //probabilty of getting four heads
P5=(factorial(6)/(factorial(6-5)*factorial(5)))*p^5*q^(6-5);  //probabilty of getting five heads
P6=(factorial(6)/(factorial(6-6)*factorial(6)))*p^6*q^(6-6);  //probabilty of getting five heads
PA=P4+P5+P6 ;   
disp(PA,'probability of getting atleast four heads(i.e k=4,5 or 6)')
 
Pn=q^6         //probability of getting no heads
Pm=1-Pn;
disp(Pm,'probability of getting one or more heads')