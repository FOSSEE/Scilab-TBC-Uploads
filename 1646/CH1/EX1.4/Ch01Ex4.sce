// Scilab Code Ex1.4: Page:27 (2011) 
clc;clear;
c = 1;....// Speed of light in vacuum, m/s
u_x_prime = c;    // Velocity of photon as measured in S_prime frame, m/s
v = c;    // Velocity of frame S_prime relative to S frame, m/s
u_x = (u_x_prime + v)/(1+v*u_x_prime/c^2);
if u_x == 1 then
    ux = 'c';
else 
    ux = string(u_x)+'c';    
end
printf("\nThe speed of one photon as observed by the other is %c", ux);

// Result
// The speed of one photon as observed by the other is c 
