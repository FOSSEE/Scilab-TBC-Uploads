clear    
clc
disp('Exa-2.9');
v1x=0.6;v1y=0;v2x=0;v2y=.8;c=1;     // all the velocities are taken wrt c
v21x=(v2x-v1x)/(1-(v1x*v2x/c^2));   //using lorentz velocity transformation
v21y=(v2y*(sqrt(1-(v1x*c)^2)/c^2))/(1-v1y*v2y/c^2) 
printf('The velocity of rocket 2 wrt rocket 1 along x and y directions is  %.2f c & %.2f c respectively',v21x,v21y);