//Chapter 6
//Example 6_19
//Page 124

clear;clc;

pf1=0.7;
pf2=0.866;
tc=100;
id=0.1;

//Referring to phasor diagram of figure 6.16,
a1=pf2/pf1;
BD=a1-1;
ac=BD*10;
phi1=(acosd(pf1));
phi2=(acosd(pf2));
lead=a1*sind(phi1)-sind(phi2);
pae_cost=lead*id;
cost=ac/pae_cost;

disp("COST OF INCREASING PLANT CAPACITY: ");
printf("The increase in kVA capacity of the plant = %.4f*OB \n\n", BD);
printf("Total cost of increasing the plant capacity = Rs. %.2f*OB \n\n", ac);

disp("COST OF PHASE ADVANCING EQUIPMENT: ");
printf("Leading kVAR taken by p.f correction equipment = %.3f*OB \n\n", lead);
printf("Let the cost per kVAR of the equipment be Rs. y \n\n");
printf("Annual cost of phase advancing equipment = Rs. %.3f*y*OB \n\n", pae_cost);
printf("Equating the total costs for economy, y = Rs. %.2f \n\n", cost);
