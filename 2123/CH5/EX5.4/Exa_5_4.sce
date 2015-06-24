//Example No. 5.4
clc;
clear;
close;
format('v',7);

//Given Data : 
Ia1=10;//A
V1=200;//volt
N1=1800;//rpm
Ra=0.6;//ohm
Rfield=360;//ohm
V2=180;//volt
I_line=20;//A
//fi2=V2/V1*fi1
fi2BYfi1=V2/V1;
//Ia1*fi1=Ia2*fi2
Ia2=Ia1/fi2BYfi1;//A
Eb1=V1-Ia1*Ra;//V
Eb2=V2-Ia2*Ra;//V
//Eb1/Eb2=fi1*N1/fi2/N2
N2=N1/(Eb1/Eb2*fi2BYfi1);//rpm
disp(N2,"Motor speed after supply voltage decreases in rpm : ");
Ifield=V2/Rfield;//A
Ia=I_line-Ifield
//V2=Ia*(R+Ra)
R=V2/Ia-Ra;//ohm
disp(R,"Additional resistance in ohm : ");
