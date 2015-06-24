clc
clear
printf("Example 2.4 | Page number 39 \n\n");
//(a)Calculate the magnitude and direction of work for air inside the balloon
//(b)Find the magnitide and direction of work for the atmosphere and the balloon

//Given Data
p1 = 1.5 * 10^(5) //N/m^2 //initial pressure in ballon
d1 = 0.25 //m //initial diameter of balloon
d2 = 0.3 //m //final diameter of balloon
p_atm = 10^(5) //N/m^2 //atmospheric pressure
printf("Initial pressure in ballon = %.2f N/m^2\n",p1); 
printf("Initial diameter of ballon = %.2f m\n",d1);
printf("Final diameter of ballon = %.2f m\n",d2);
printf("Atmospheric pressure = %.2f N/m^2\n\n",p_atm);

//Solution

//Part (a)
printf("Part (a)\n");
printf("As p is proportional to d, p = k*d, where k is proportionality constant\n");
printf("Therefore,\n");

k = p1/d1;
printf("p1 = k*d1 => k = (p1/d1) = (%.2f/%.2f) = %.2f N/m^3\n",p1,d1,k);

p2 = k*d2; //N/m^2 //final pressure in balloon
printf("p2 = k*d2 = (%.2f*%.2f) = %.2f N/m^2\n\n",k,d2,p2);

W_air = integrate('k*(%pi/2)*(d^3)','d',d1,d2) //Nm //Work done by air on the balloon
printf("Work done by balloon on air = %.2f Nm\n\n",W_air);

//Part (b)
printf("Part (b)\n");
W_atm = integrate('p_atm*(0.5*%pi*(d^2))','d',d2,d1); //Nm //Work done by atmosphere on ballon
printf("Work done by atmosphere on balloon = %.2f Nm\n",W_atm);
W_balloon = -1*(W_air+W_atm);
printf("Work done by balloon = -(Work done by air + Work done by atmosphere) = -(%.2f%.2f) = %.2f Nm\n",W_air,W_atm,W_balloon);
