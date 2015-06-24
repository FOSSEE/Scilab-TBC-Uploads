 
c=3*(10^8); //velocity of light, m/s
VaE= 0.90*c; //velocity of spacecraft alpha w.r.t Earth, m/s
VbA= 0.50*c; //velocity of spacecraft beta w.r.t. Alpha, m/s

VbE= (VaE+VbA)/(1+((VaE*VbA)/(c^2))); //velocity of beta w.r.t Earth, m/s
VbE=VbE/c; //Converting to percent of c

disp(VbE,"The required velocity of spacecraft Beta w.r.t. Earth, in m/s, in terms of percent of c, is: ")
 
//Result

// The required velocity of spacecraft Beta w.r.t. Earth, in m/s, in terms of percent of c, is:    
//    0.9655172  
