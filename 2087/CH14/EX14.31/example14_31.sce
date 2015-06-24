

//example 14.31
//calculate concentration of suspended load at depth
clc;funcprot(0);
//given
gamma_w=9.81;         //unit weigth of water
D=5;                  //depth of channel
d=0.3;                //grain size
k=1.5;                //size of roughness of channel bed
S=1/4000;             //bed slope
G=2.65;              //specific gravity
V=0.02;              //fall velocity
c_=1000;               //concentration at 0.3 m above bed
a=0.3;
y=2.5;
k_=0.4;             //van karman's constant

R=5;                //R=D for wide channel
V_=(gamma_w*R*S)^0.5;
c=c_*((a/y)*(D-y)/(D-a))^(V/(V_*k_));
mprintf("concentration of suspended load=%i ppm.",c);
