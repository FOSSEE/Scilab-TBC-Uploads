clc
clear 
printf("example 6.15 page number 249\n\n")

//to find the top and bottom product composition

//part 1
x=0.4;
y=0.8;
x_D=y;
x_W=0.135;   //bottom concentration
D=(100*x-100*x_W)/(y-x_W);     //distillate amount
printf("amount of distillate =%f moles/h",D)

//part 2
alpha=6;   //relative volatility
x_R=y/(y+(alpha*(1-y)));    //liquid leaving partial condensor
printf("\n\nliquid leaving partial condenser = %f",x_R)

y1=(1/3)*y+(2/3)*x;
x1=y1/(y1+(alpha*(1-y1)));
y_W = (1/3)*x_D+(2/3)*x1;
x_W=y_W/(y_W+(alpha*(1-y_W)));
D=(100*(x-x_W))/(y-x_W);

printf("\n\namount of distillate = %f moles/h",D)
