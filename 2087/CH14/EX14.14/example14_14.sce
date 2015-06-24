

//example 14.14
//calculate concentration of suspended load
clc;funcprot(0);
//given
gamma_w=9.81;         //unit weigth of water
D=3;                  //depth of channel
d=0.3;                //grain size
k=1.5;                //size of roughness of channel bed
S=1/4400;             //bed slope
G=2.65;              //specific gravity
V=0.03;              //fall velocity
c_=400;               //concentration at 0.3 m above bed
a=0.3;
y=1;
k_=0.4;             //van karman's constant

N1=d^(1/6)/24;
N=k^(1/6)/24;
r=(N1/N)^1.5;
R1=3*r;
V_=(gamma_w*R1*S)^0.5;
c=c_*((a/y)*(D-y)/(D-a))^(V/(V_*k_));
c=round(c*10)/10;
mprintf("concentration of suspended load=%f ppm.",c);

