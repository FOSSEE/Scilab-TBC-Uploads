clear;
clc;
printf("\n Example 3.2");
u_water = 5*10^(-3);  //The flow velocity of the water in m/sec
p_galena = 7500;      //The density of galena is in kg/m^3
p_limestone = 2700;   //The density of limestone is in kg/m^3
viscosity = 0.001;    //The viscosity of water in N s/m^2

//calculating maximum value of reynold's number considering 5mm particle size
Re_max = (u_water*1000*0.0001)/(viscosity);
printf("\n The maximum permissible value of Re is %f",Re_max);

//maximum particle size of galena which will be carried away by water
d = sqrt((u_water*(18*viscosity))/((7500-1000)*9.81));
printf("\nmaximum particle size of galena which will be carried away by water is %.1f um",d*10^(6));

//maximum particle size of limestone which will be carried away by water
d1 = sqrt((u_water*(18*viscosity))/((2700-1000)*9.81));
printf("\nmaximum particle size of limestone which will be carried away by water is %.1f um",d1*10^(6));


//From the given data 43% galena and 74% limestone will be removed .
//Given that in the feed there is 20% galena and 80% limestone
//Assuming 100g feed
printf("\n\nIn the overflow:");
printf("\nAmount of galena is %fg",(20*0.43)); 
printf("\nAmount of limestone is %fg",(80*0.74));
printf("\nconcentration of galena is %.1f per cent",(20*0.43*100)/(20*0.43+80*0.74));
printf("\n\concentration of galena is %fper cent",(80*0.74*100)/(20*0.43+80*0.74));
printf("\n\nIn the underflow:")
printf("\nconcentration of galena is %.1f percent",(20*(1-0.43)*100)/(20*(1-0.43)+80*0.26))
printf("\nconcentration of limestone is %.1f per cent",(80*0.26*100)/(20*0.57+80*0.26))






