//Chapter 13, Problem 1, Figure 13.3, 
clc;
//branch currents in figure 13.3 (a)
I1=50-20;
I2=20+15;
I3=I1-120;
I4=15-I3;
I5=120-40;
disp("(a)   from Fig. 13.3(a).");
disp("For junction B:");
printf("I1 = %d A",I1);
disp("For junction C:");
printf("I2 = %d A",I2);
disp("For junction D:");
printf("I3 = %d A",I3);
disp("For junction E:");
printf("I4 = %d A",I4);
disp("For junction F:");
printf("I5 = %d A\n\n\n",I5);
disp("(b)   from Fig. 13.3(b).");
printf("Applying Kirchhoff’s voltage law and moving clockwise around the loop,\n");
printf("starting at point A, we get,\n");
//from figure 13.3(b)
I=2;
E=I*(2+2.5+1.5+1)-(3+6-4);
printf("emf E = %d V",E);
