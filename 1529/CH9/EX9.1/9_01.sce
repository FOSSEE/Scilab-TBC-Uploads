//Chapter 9, Problem 1
clc;
B=1.25;                     //flux density
v=4;                        //conductor velocity
l=300*10^-3;                //conductor length
R=20;                       //resistance 
E=B*l*v;                    //calculating emf
I=E/R;                      //calculating current from ohms law
disp("(a)");
disp("If the ends of the conductor are open circuited, no current will flow.");
disp("(b)");
disp("If its ends are connected to a load of 20ohm resistance, then");
printf("Current = %f A",I);
