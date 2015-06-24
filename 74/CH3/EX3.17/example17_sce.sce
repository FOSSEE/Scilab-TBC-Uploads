// chapter 3
// example 3.17
//page 150, figure 3.53
Ri=%inf;Ro=0;
Aol=%inf;
Vb=0;//b is virtually ground
Vout=1;// let us assume
//input current of op-amp is zeroas R=%inf
I1=(Vb-Vout)/100000
If2=I1;
Va=((10000)/(100000))*(Vb-Vout)
//at node A Iin=I1+If1
// (Vin-Va)/10*10^3=(Va-Vb)/10*10^3 + (Va-Vo)/100*10^3
Vin=Va+(10000)*((Va/10000)+((Va-Vout)/100000));
Ratio=Vout/Vin// result ratio of Vout/Vin