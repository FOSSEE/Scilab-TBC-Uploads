//Chapter 9
//page no 339
//given
clc;
clear all;
n1=1.5;            //refractive index
n2=1.5;            //refractive index
W=2.5;      //in degree
NA1=0.3;
NA2=0.4;
Csim1=16*(n1/n2)^2/[1+(n1/n2)^4]*[1-n2*W/(180*NA1)];   //angular coupling coefficient
//Answer wrong in book
printf("\n Csim= %0.3f\n",Csim1);
Lsim1=-10*log10(Csim1);
printf("\n Insertion Loss,Lsim= %0.3f dB\n",Lsim1);
Csim2=16*(n1/n2)^2/[1+(n1/n2)^4]*[1-n2*W/(180*NA2)]; //angular coupling coefficient
//Answer wrong in book
printf("\n Csim= %0.3f\n",Csim2);
Lsim2=-10*log10(Csim2);
printf("\n Insertion Loss,Lsim= %0.2f dB\n",Lsim2);

