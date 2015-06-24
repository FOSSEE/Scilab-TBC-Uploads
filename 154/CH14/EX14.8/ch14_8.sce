clc
disp("Example 14.8")
printf("\n")

//From figure 14.10
//By inspection
//V1=10^9*I1
//V2=10(I2-10^-3*V1)


//On solving we get
disp("I1=10^-9*V1              (1)");
disp("V2=10*I2-10^-2*V1        (2)");


//The equations which contain g parameters are
//I1=g11*V1+g12*I2
//V2=g21*V1+g22*I2

//On comparing (1) and (2) with above equations

printf("\ng11=%2.1e\n",10^-9);
printf("g12=%d\n",0);
printf("g21=%2.1e\n",-10^-2);
printf("g22=%d\n",10);
