//Example No. 5.26
clc;
clear;
close;
format('v',9);

//Given Data : 
V1=675;//V
alfa1=90.5;//degree
N1=350;//rpm
Ia1=30;//A
N2=500;//rpm
Rf=0.22;//ohm
Ra=0.22;//ohm
Ia2=Ia1*N2/N1;//A
disp(Ia2,"Armature current of converter in A : ");
Va1=V1*sqrt(2)/%pi*(1+cosd(alfa1));//V
Eb1=Va1-Ia1*(Ra+Rf);//V
//Eb1/Eb2=Ia1*N1/(Ia2*N2)
//Eb2=Va2-Ia2*(Ra+Rf)
Va2=Eb1*Ia2*N2/(Ia1*N1)+Ia2*(Ra+Rf);//V
alfa2=acosd(Va2/V1/sqrt(2)*%pi-1);//degree
disp(alfa2,"Fringe angle of converter in degree : ");
