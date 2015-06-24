//To calculate the uncertainity in momentum
delta_x = 0.2;      //electron distance, armstrong
delta_x = delta_x*10^-10;      //electron distance, m
h = 6.626*10^-34;    //planck's constant
delta_p = h/(2*%pi*delta_x);      //uncertainity in momentum, kg.m/s
printf("uncertainity in momentum in kg m/s is");
disp(delta_p);
