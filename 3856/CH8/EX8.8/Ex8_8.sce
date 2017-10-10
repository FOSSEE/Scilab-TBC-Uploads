//Write Expression for the activities of Pottasium Chloride Sodium Chromate and Aluminium sulphate 

//Example 8.8

clc;

clear;

vpos1=1;  //Number of cation of KCl

vneg1=1;  //Number of anion of KCl

v1=vpos1+vneg1;  //Total number of ions of KCl

m1=(1*vpos1*1*vneg1)^1/v1;  //Mean ionic molality of KCl 

a1=m1; //Mean ionic activity ofelectrolyte 

printf("mu KCl = ",a1);

printf("(m^%.1f)",v1);

printf("*(gamma^%.1f)",v1);

vpos2=2;  //Number of cation of KCl

vneg2=1;  //Number of anion of KCl

v2=vpos2+vneg2;  //Total number of ions of KCl

a2=((2^vpos2)*(1^vpos2));  //Mean ionic molality of KCl  

printf("\nmu Na2CrO4 = %.0f",a2);

printf("*(m^%f)",v2);

printf("*(gamma^%.1f)",v2);

vpos3=2;  //Number of cation of KCl

vneg3=3;  //Number of anion of KCl

v3=vpos3+vneg3;  //Total number of ions of KCl

a3=(2^vpos3*3^vneg3);  //Mean ionic molality of KCl 

printf("\nmu Al2(SO4)3 = %.0f",a3 );

printf("*(m^%.1f)",v3);

printf("*(gamma^%.1f)",v3);

