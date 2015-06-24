//Example 1.15(a)

clear;

clc;

Rp=100*10^3;//Potentiometer Resistance

VCC=15;

VEE=-15;

//We have to choose the resistances in such a way that we get VA=10V and VB=-10V, so that if we want the source to be in the range -10V<=vW<=10V, we need to only turn the wiper. Let RA and RB be the resistances corresponding to nodes A and B respectively.If RA=RB=25kohm then there would be a drop of 5V accross each component(RA,RB and potentiometer) which will make VA=10V and VB=-10V. Hence RA and RB are selected as 25kohms.(Refer Fig. 1.38)

//vRA(voltage accross RA)=5=(15*RA)/(50+RA) (Using Voltade Divider Rule)where 50kohm is the potentiometer  resistance on node A side and RA is in kohms. Hence by solving the equation RA=25kohm. Similarly solve for RB. 

y=poly(0,'x');

p=5*(y+50*(10^3))-(15*y);

RA=roots(p);

RB=RA;

printf("Designed Source :");

printf("\nRA=%.2f kohms",(RA/1000));//mentioned in the diagram

printf("\nRB=%.2f kohms",(RB/1000));//mentioned in the diagram

printf("\nRpot=%.2f kohms",(Rp/1000));//mentioned in the diagram