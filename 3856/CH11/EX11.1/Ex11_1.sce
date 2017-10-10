//Calculate the concentration of the undissociated acid ,the H positive ion and the CN negative ion .And the percent dissociation

//Example 11.1

clc;

clear;

Ka=4.9*10^-10;  //Dissociatin constant of weak acid HCN at 298 K 

x1=0.050;  //Concentration of HCN in M ,(HCN is a aweak acid assuming that at equilibrium the undissociated molecule of HCN is also same )

x=(Ka*x1)^(1/2);  //Concentration of H ion and CN ion at equilibrium in M (cocentration of both ion is equal)

printf("Concentration of ion = %.0f*10^-6 M",x*10^6);

x2=x1-x; //Concentration of undissociated acid at equilibrium in M

printf("\n Concentration of undissociated acid at equilibrium = %.3f M",x2)

X=(x/x1)*100;  //Percent dissociation of HCN 

printf("\nPercent dissociation = %.0f*10^-2 percent ",X*10^2);
