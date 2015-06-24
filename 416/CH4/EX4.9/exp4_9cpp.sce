clc
clear
disp("example 4 9")
l1=300;//load and power factor for three different loads
pf1=1;
l2=1000;
pf2=0.9;
l3=1500;
pf3=0.8
printf(" for %dkW unit power factor load \n power factor angle %.f\n reactive power %.fkvr",l1,acosd(pf1),l1*(tand(acosd(pf1))))
printf(" \nfor %dkW unit power factor load \n power factor angle %.2f\n reactive power %.2fkvr",l2,acosd(pf2),l2*(tand(acosd(pf2))))
printf(" \nfor %dkW unit power factor load \n power factor angle %.2f\n reactive power %.2fkvr",l3,acosd(pf3),l3*(tand(acosd(pf3))))
tl=l1+l2+l3
tt=l3*(tand(acosd(pf3)))+l2*(tand(acosd(pf2)))+l1*(tand(acosd(pf1)))
printf("\n total kW \t%dkW\n total kVAR %.1fkVAR \n total kVA %.2fkVA \n overall power factor %.3flagging",tl,tt,(tl^2+tt^2)^0.5,tl/(tl^2+tt^2)^0.5)
printf("\n the maximum unity power factor load which yhe station can supply is equal to the kVA i.e.%.2fkVR",(tl^2+tt^2)^0.5)