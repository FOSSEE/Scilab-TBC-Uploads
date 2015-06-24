clc
clear
printf("Example 2.5 | Page number 40 \n\n");
//Find the work interaction for pure substance.
//Given Data
p1 = 10 //bar //initial pressure
V1 = 0.1 //m^3 //initial volume
p2 = 2 //bar //final pressure
V2 = 0.35 //m^3 //final volume

printf("Initial pressure = %.2f bar\n",p1);
printf("inital volume = %.2f m^3\n",V1);
printf("Final pressure = %.2f bar\n",p2);
printf("Final volume = %.2f m^3\n",V2);

//Solution
printf("\nLet the expansion process follow the path pV^(n) = constant\n");
printf("Therefore,\n");
n = (log(p1/p2))/(log(V2/V1));
printf("n = (ln(p1/p2))/(ln(V2/V1)) = (ln(%.2f/%.2f))/(ln(%.2f/%.2f)) = %.4f\n",p1,p2,V2,V1,n);
W_d = (p1*V1 - p2*V2)*10^5/(n-1) //J //Work interaction for pure substance
printf("Work interaction for pure substance = (p1V1 - p2V2)/(n-1) = %.2f kJ",W_d*.001)



