
//To Find the Flux of Electric Field through the surface bounded by the frame

//Example 30.1

clear;

clc;

delS=0.01;//Length of Edge of the Square frame in metres

E=20;//Electric Field in V/m

Theta=%pi/3;//Angle between Normal and Electric Field

Flux=E*delS*cos(Theta);//Electric Flux through the Surface

printf("Net flux of Electric Field=%f V/m",Flux);
