//ques-24.12
//Calculating quantity of iodine left behind in the aqueous layer
clc
xo=4;//initial amount of iodine (in mg)
v=50;//volume of solution (in mL)
V=10;//volume of Carbon tetrachloride (in mL)
K=85;//partition coefficient
n=1;//1st extraction
x1=xo*(v/(v+K*V))^n;
printf("The amount of iodine left in aqueous layer is %.3f mg.",x1);
