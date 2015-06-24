clc;
r=100;           //resistance in ohm
v1=120;        //potential diff in Volt
n2=50;         //no. of turns
n1=200;        //no. of turns
v2=(n2*v1)/n1;    //potential diff in volt
i2=v2/r;      //calculating current
i1=(n2/n1)*i2;      //calculating current
disp(i1,"Current in primary circuit in Ampere = ");   //diplaying result