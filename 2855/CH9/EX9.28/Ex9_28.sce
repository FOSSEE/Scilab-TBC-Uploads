//Chapter 9
//page no 340
//given
clc;
clear all;
a1=4.5;            //in micrometer
a2=4;            //in micrometer
V=2.1;
aw=1;           //in degree
NA=0.2;
n1=1.45;
y=1;            //in micrometer
w1=a1*[0.65+1.62*V^-0.5+2.88*V^-6]/sqrt(2);     //insertion loss
printf("\n Wo1=  %0.1f ",w1);
w2=a2*[0.65+1.62*V^-0.5+2.88*V^-6]/sqrt(2);     //insertion loss
printf("\n Wo2=  %0.1f ",w2);
Lintr=-10*log10(4*[(w1/w2+w2/w1)^-2]);        //toatl insertion loss at joint
printf("\n Lintr=  %0.2f dB",Lintr);        //Answer wrong in book
