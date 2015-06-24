//Example No. 5.32
clc;
clear;
close;
format('v',9);

//Given Data : 
V=230;//V
N1=1000;//rpm
Ia1=100;//A
Ra=0.1;//ohm
Rf=0.1;//ohm
N2=800;//rpm
Ia2=sqrt(2)*Ia1;//A(As T2=2*T1 & T proportional to Ia^2)
Eb1=V-Ia1*(Ra+Rf);//V
Eb2=N2*Ia2/(N1*Ia1)*Eb1;//V
//Eb2=Ia2*(Ra+Rf+Rbraking)
Rbraking=Eb2/Ia2-Ra-Rf;//ohm
disp(Rbraking,'Braking resistance in ohm : ' );
Ibraking=Eb2/Rbraking;//A
disp(Ibraking,'Braking current in A : ' );
//Braking current is not calculated in the textbook but asked in the example.
