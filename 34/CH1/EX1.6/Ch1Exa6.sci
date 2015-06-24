 
mf= 1; //mass of each entity, kg
c= 3*(10^8); //velocity of light, m/s
v= 0.6*c; //velocity of fragments relative to original body, m/s
E0= 2*((mf*(c^2))/sqrt(1-((v/c)^2))); //Total energy of fragments
m= E0/(c^2); //mass of original body, kg
disp(m,"The total mass of the stationary body (in kg) is: ")
 
//Result
// The total mass of the stationary body (in kg) is:    
//    2.5  
