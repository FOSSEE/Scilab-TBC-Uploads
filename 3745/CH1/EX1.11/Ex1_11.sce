// Ex 11 Page 351

clc;clear;close;
// Given
Rab=6;Rbc=8;Rca=4;//ohm
Vab=100*expm(%i*0);//V
Vbc=100*expm(%i*-120*%pi/180);//V
Vca=100*expm(%i*120*%pi/180);//V
Zab=6+%i*8;//ohm
Zbc=8+%i*6;//ohm
Zca=4-%i*3;//ohm

//Phase current
Iab=Vab/Zab;//A
Ibc=Vbc/Zbc;//A
Ica=Vca/Zca;//A
printf("Phase Current:")
[r,t]=polar(Iab)
printf("\n Iab=%.f angle=%.2f degree ",r,t*180/%pi)
[r,t]=polar(Ibc)
printf("\n Ibc=%.f angle=%.2f degree ",r,t*180/%pi)
[r,t]=polar(Ica)
printf("\n Ica=%.f angle=%.2f degree ",r,t*180/%pi)
//Line current
Iaa=Iab-Ica;//A
Ibb=Ibc-Iab;//A
Icc=Ica-Ibc;//A
printf("\n\n  Line Current:")
[r,t]=polar(Iaa)
printf("\n Iaa=%.1f angle=%.2f degree ",r,t*180/%pi)
[r,t]=polar(Ibb)
printf("\n Ibb=%.2f angle=%.2f degree ",r,t*180/%pi)
[r,t]=polar(Icc)
printf("\n Icc=%.2f angle=%.2f degree ",r,t*180/%pi)
//Power Consumed
Wab=abs(Iab)^2*Rab;//W
Wbc=abs(Ibc)^2*Rbc;//W
Wca=abs(Ica)^2*Rca;//W
W=Wab+Wbc+Wca;//W
W=W/1000;//kW
printf("\n\n Total Power, W=%.f kW",W)
//Answer wrong for line current in the textbook.
