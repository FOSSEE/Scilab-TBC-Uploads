//Calculate the Boiling point and freezing poin of solution of  Sucrose in water

//Example 7.4

clc;

clear;

m1=45.20;  //Mass og the Sucrose in g

m2=316.0/1000;  //Mass 0f the water in kg 

n=m1/342.3;  // Molar mass of the Sucrose in mol

Kb=0.51;  //Molal boiling point Elevation constant in K kg mol^-1

m3=n/m2;  //Molality of the solution in mol kg^-1

delT1=(Kb*m3)+373.15;  //Boiling point for solution of Sucrose in water

printf("(a)Boiling point of Sucrose = %.2f K",delT1); 

Kf=1.86;  //Molal freezing point depression constant in K kg mol^-1 

delT2=273.15-(Kf*m3);  //Boiling point for solution of Sucrose in water

printf("\n(b)Freezing point of Sucrose = %.2f K",delT2); 
