
fg= 5.6*(10^14); //frequency of green color, Hz
fr= 4.8*(10^14); //frequency of red color, Hz
c= 3*(10^8); //velocity of light, m/s
v= c*((fg^2 - fr^2)/(fg^2 + fr^2)); //longitudinal speed of observer, m/s
v= v*3.6; //convert to km/h
R= 1; //rate at which fine is to be imposed per km/h, $
l= 80; //speed limit upto which no fine is to be imposed, km/h
fine= v-l; // fine to be imposed,  $
disp(fine,"The fine imposed (in $) is: ")
 
//Result
// The fine imposed (in $) is:    
//  1.652D+08  
