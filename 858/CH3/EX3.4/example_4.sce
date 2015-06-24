clc
clear 
printf("example 3.4 page number 92\n\n")

//to find the period of service

C2H2_produced = (1/64)*0.86;   //in kmol
volume_C2H2 = C2H2_produced*22.4*1000;    //in l

//assuming ideal behaviour,
volume = (100/101.3)*(273/(273+30));
time = (volume_C2H2/volume)*(1/60);
printf("time of service = %f hr",time)




