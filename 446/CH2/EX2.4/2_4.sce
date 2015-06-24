clear  
clc
disp('Exa-2.3');
Lo=100*(10^3);c=3*(10^8); //Given values//all the quantities are converted to SI units 
d=2.2*(10^-6);      //time between its birth and decay
t=Lo/c             //where Lo is the distance from top of atmosphere to the Earth. c is the velocity of light. t is the time taken
u=sqrt(1-((d/t)^2));   // using time dilaion fromula for finding u where u is the minimum velocity in terms of c;
printf('Hence the minimum speed required is %f c.',u);
