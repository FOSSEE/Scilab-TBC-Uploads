 
t0= 3600; // time interval on Earth, seconds
t= 3601; //time interval for spacecraft as measured from Earth, seconds
c= 2.998 *(10^8); //speed of light, m/s
v=c*sqrt((1-((t0/t)^2))); //relative velocity of spacecraft, m/s
disp(v,"The speed of the Spacecraft relative to Earth (in m/s) is: ")

//Result
//The speed of the Spacecraft relative to Earth (in m/s) is:    
//    7064882.