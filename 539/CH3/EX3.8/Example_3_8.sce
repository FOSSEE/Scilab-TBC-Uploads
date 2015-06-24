//Determination of Directional Indices for a Hexagonal Unit Cell

clear;
clc;

printf("\tExample 3.8\n");

//From the construction shown in the book
du=1;
dv=1;
dw=1;

//The above indices are for parallelopiped
//To convert it for hexagonal system
u=(2*du-dv)/3;
v=(2*dv-du)/3;
t=-(u+v);
w=dw;

x=[u v t w]*3;
disp(x,"The indices for the given directions are");

//End