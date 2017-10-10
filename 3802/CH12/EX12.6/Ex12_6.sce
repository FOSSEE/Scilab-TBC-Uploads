//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_6.sce

clc;
clear;
printf("\n   (a)")
Pi=8; //power in kilowatt
pf=0.8;
Vl=440;
Qi=Pi*tand(acosd(pf));
P=complex(Pi,Qi);
P_mag=sqrt(real(P)^2+imag(P)^2);
P_angle=atand(imag(P)/real(P));
Il=(P_mag*1e3)/(sqrt(3)*Vl);
printf("\n Complex power=  magnitude\tangle(deg) \n\t\t     %1.0f \t %2.2f",P_mag,P_angle)
printf("\n Line current=%2.2f A \n",Il)

printf("\n   (b)")
Pl=7.5;
pf=0.6;
P=Pi+(Pl*pf);
Q=Qi-(P*sind(acosd(pf)));
kVA=P;
Il=(kVA*1e3)/(sqrt(3)*Vl);
printf("\n Total line current=%2.1f A \n",Il)
