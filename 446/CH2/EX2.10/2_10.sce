clear    
clc
disp('Exa-2.10');
u=0.8*c;L=65;c=3*10^8;            //all values are in terms of c
t=u*L/(c^2*(sqrt(1-((u/c)^2))));  //from the equation 2.31 
printf('The time interval between the events is %e sec which equals %.2f usec.',t,t*10^6);