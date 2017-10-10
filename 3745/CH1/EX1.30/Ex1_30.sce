// Ex 30 Page 373

clc;clear;close;
// Given
VP=-2;//V
IDSS=1.75/1000;//A
VDD=24;//V
ID=1/1000;//A
VP=0.2;//V (pinch off voltage)

VGS=(1-sqrt(ID/IDSS))*VP;//V
gmo=-2*IDSS/VP;//S
gm=gmo*(1-VGS/VP);//S
Rs=-VGS/ID;//ohm

printf("VGS=%.2f V",VGS)
printf("\n gm = %.2f mS",gm*1000)
printf("\n Rs = %.f ohm",Rs)
//Ans are wrong in the book.
