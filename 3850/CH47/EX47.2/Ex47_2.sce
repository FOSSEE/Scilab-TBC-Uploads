
//To Calculate the height of Passenger in the Ground Frame

//Example 47.2

clear;

clc;

L=6;//Height of Passenger in the train frame

v=3*10^7;//Speed of the train(in which the person is sitting) in m/s

c=3*10^8;//Speed of light in m/s

L1=L*sqrt(1-(v/c)^2);//Height of Passenger in the Ground Frame

L1f=int(L1);//Height of Passenger (in whole number of feets) in the Ground Frame

printf("Height of the passenger in the Ground Frame = %.0f feet ",L1f);

L1i=(L1-L1f)*12;//Height of Passenger (in remaining inches) in the Ground Frame

printf("%.1f inches",L1i);
