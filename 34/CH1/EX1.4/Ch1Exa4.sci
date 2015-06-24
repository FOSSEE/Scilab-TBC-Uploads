
StartingAge= 20; //starting age for both Dick and Jane
c= 3*(10^8); //velocity of light, m/s
v= 0.8*c; //rate of separation of Dick and Jane, m/s
t0= 1; //interval for emission of signals, yr
t1= t0*((1+v/c)/(1-v/c)); //interval for reception of signals on outward journey, yr
t1= t0*(sqrt((1+v/c)/(1-v/c))); //interval for reception of signals on outward journey, yr
t2= t0*(sqrt((1-v/c)/(1+v/c))); //interval for reception of signals on return trip, yr

//Dick's frame of reference
Tout1= 15; //duration of outward trip, yr
Tin1= 15; //duration of return trip, yr
JaneAge= StartingAge+(Tout1/t1)+(Tin1/t2); //Jane's age according to Dick

//Jane's frame of reference
Tout2= 25; //duration of outward trip, yr
d= 20; //delay in transmission of signal to Jane, caused by distance of the star, yr
Tin2= 5; //duration of return trip
DickAge= StartingAge+((Tout2+d)/t1)+(Tin2/t2); //Dick's age according to JAne


disp(JaneAge,"According to Dick, age of Jane(in yr) is:")
disp(DickAge,"According to Jane, age of Dick(in yr) is:")
 
//Result
 
// According to Dick, age of Jane(in yr) is:   
//   70.  
 
// According to Jane, age of Dick(in yr) is:   
//   50.  
