clc
clear
printf("Example 2.6 | Page number 41 \n\n");
//(a)Find the work of compression of air.
//(b)What would be the work done on air.

//Given Data
p1 = 1.0 //bar //initial pressure
V1 = 0.1 //m^3 //initial volume
p2 = 6   //bar //final pressure
         //and p1*(V1^1.4) = p2*(V2^1.4)

printf("Initial pressure = %.2f bar\n",p1);
printf("inital volume = %.2f m^3\n",V1);
printf("Final pressure = %.2f bar\n\n",p2);


//Solution
//Part (a)
printf("Part (a)\n");
V2 = V1*(p1/p2)^(1/1.4) //m^3 //final volume
printf("Final Volume = %.4f m^3\n",V2);

W_d = (10^5)*(p1*V1 - p2*V2)/(1.4-1); //J //Work of compression for air
printf("Work of compression for air = %.1f KJ\n\n",W_d*.001);

//Part (b)
printf("Part (b)\n");
V2 = (p1/p2)*V1; //m^3 //final volume
printf("Final Volume = %.4f m^3\n",V2);

W_d = (10^5)*p1*V1*log(V2/V1); //J //Work done on air
printf("Work done on air = %.1f KJ\n\n",W_d*.001);

