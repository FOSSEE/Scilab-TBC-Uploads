clear;
clc;
printf("\n Example 5.1");
//Basis 1 kg of solids
feed_rate_solid = 1.33;  //Mass rate of feed of solids in kg/sec
U = 1.5;                 //Mass rate of solids in the underflow in kg/sec
Y = [5.0 ; 4.2; 3.7 ; 3.1; 2.5];
printf("\n concentration(Y) (kg water/kg solids):\n");
printf("%.1f\n",Y);
printf("\n water to overflow (Y-U) (kg water/kg solids):\n");
O = Y - 1.5;//Amount of water to overflow in kg water/kg solids
printf("\n %.1f\n",O);
Uc = [2.00*10^(-4);1.20*10^(-4);0.94*10^(-4);0.70*10^(-4);0.50*10^(-4)];
printf("\n sedimentation rate uc (m/sec):\n");
printf("%f  \n",Uc);
X =[1.75*10^4;2.25*10^4;2.34*10^4;2.29*10^4;2.00*10^4];//X = (Y-U)/Uc
printf(" \n\n(Y-U)/Uc (s/m):\n");
printf("\n %d\n",X);
z = max(X); //prints the maximum value of X
printf("\nMaximum value of (Y-U)/Uc = %ds/m",z);

//Calculating the require darea of the thickener
A = z*1.33/1000; //1.33 is the mass feed rate of solids in kg/sec
//1000 is the density of water in kg/m^3
printf("\n The required area of the thickener is :%.2fm^2\n",A);
