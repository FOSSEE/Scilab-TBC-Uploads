//Chapter 2, Problem 20,
clc;
V=240;                            //Supply voltage
P1=1000;                            //Power rating of Electric toaster 
P2=3000;                            //Power rating of Electric fire
//Calculating fuse current for electric toaster
I1=P1/V;
//Calculating fuse current for electric fire
I2=P2/V;
I1=I1+1;
I2=I2+1;
printf("(i) Current in fuse for Electric toaster = %d A\n\n\n",I1);
printf("(ii) Current in fuse for Electric fire = %d A\n\n\n",I2);
