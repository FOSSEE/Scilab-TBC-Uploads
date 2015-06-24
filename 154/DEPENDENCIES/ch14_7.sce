clc
disp("Example 14.7")
printf("\n")

//From figure 14.9
disp("V1=50*I1        (1)");
disp("I2=300*I1       (2)");

//The equations which contain h parameters are
//V1=h11*I1+h12*V2
//I2=h21*I1+h22*V2

//On comparing (1) and (2) with above equations

printf("\nh11=%d\n",50);
printf("h12=%d\n",0);
printf("h21=%d\n",300);
printf("h22=%d\n",0);
