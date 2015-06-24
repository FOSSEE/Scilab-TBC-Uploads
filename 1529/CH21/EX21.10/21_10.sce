//Chapter 21, Problem 10
clc;
f=50;                       //frequency
n1=25;                      //primary turns
n2=300;                     //secondary turns
A=300e-4;                   //cross-sectional area of the core
v1=250;                     //primary voltage
phim=v1/(4.44*f*n1);        //flux
Bm=phim/A;                  //maximum flux density
v2=v1*(n2/n1);              //secondary voltage
printf("(a) Maximum flux density= %.2f T\n\n",Bm);
printf("(b) Secondary winding voltage = %d V",v2);
