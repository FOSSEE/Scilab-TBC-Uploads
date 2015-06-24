

//exapple 13.5 
clc; funcprot(0);
// Initialization of Variable
rhoc=867;//density of cream
rhom=1034;//density of skimmem milk
rm=78.2/1000;//radius of skimmed milk
rc=65.5/1000;//radius of cream
//calculation
r=sqrt((rhom*rm^2-rhoc*rc^2)/(rhom-rhoc));
disp(r,"distance of xis of rotation of cream milk interface in (m):")
