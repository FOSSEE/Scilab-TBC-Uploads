clear
clc
disp('Exa-9.5');        
delv=6.2*(10^11);     //change in frequency
h=1.05*(10^-34);        //value of h in J.sec
I= h/(2*%pi*delv);      //rotational inertia
printf('The value of rotational inertia is %.2e kg m2 ',I);
I=I/(1.684604e-045);
printf('which in terms of amu is %.3f u.nm2',I);