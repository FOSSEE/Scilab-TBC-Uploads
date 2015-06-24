//Example 11.11

clear;
clc;

printf("\tExample 11.11\n");

//    F is feed
//    D is distillate
//    W is waste
//    S is sidestream

F=100;
S=10;

//Mass fractions of CCl4 in various streams
xf=0.5;
xd=0.95;
xw=0.05;
xs=0.8;

//    D + W = 100-10
//    0.95D + 0.00W = 50-8
A=[1,1;0.95,0.05];
B=[90;42];
x=inv(A)*B;
printf("\nD = %.1f    W = %.1f\n",x(1),x(2));

disp("From the enthalpy data and the reflux ratio, the upper pole point M is located as shown in Figure.");

disp("Points F and S are located,such that FS/FF = 10.");

disp("MF is Joined and extended to cut NS^A at O, the immediate pole point.");
disp("The number of stages required is then obtained from the figure and");
printf("13 theoretical stages are required");

//End
