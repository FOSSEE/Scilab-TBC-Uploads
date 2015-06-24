//Chapter 6
//Example 6_18
//Page 123

clear;clc;

pf1=0.7;
pf2=0.85;
add_cost=800;

//Referring to figure 6.15, 
//The initial capacity of the plant is OB kVA at pf = pf1
a1=pf2/pf1;
BD=a1-1;
tc=BD*add_cost;
phi1=(acosd(pf1));
phi2=(acosd(pf2));
lead=a1*sind(phi1)-sind(phi2);
cost=tc/lead;

disp("COST OF INCREASING PLANT CAPACITY: ");
printf("The initial capacity of the plant is OB kVA at pf = pf1 \n\n");
printf("The increase in kVA capacity of the plant = %.4f*OB \n\n", BD);
printf("Total cost of increasing the plant capacity = Rs. %.2f*OB \n\n", tc);

disp("COST OF POWER FACTOR CORRECTION EQUIPMENT: ");
printf("Leading kVAR taken by p.f correction equipment = %.2f*OB \n\n", lead);
printf("Let the cost per kVAR of the equipment be Rs. y \n\n");
printf("Total cost of p.f correction equipment = Rs. %.2f*y*OB \n\n", lead);
printf("Equating the total cost, y = Rs. %.1f \n\n", cost);


