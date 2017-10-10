// Chapter 15 Example 2//
clc
clear
//output voltage=e,ac output voltage =em,firing angle=a//
a=20;// in degrees//
e=400;// in kV//
em=sqrt(2)*e/sqrt(3);
vdo=3*sqrt(3)*em/%pi;
printf("\n DC Output voltage = %.2f kV\n",vdo);
//dc output voltage =vd,dc current=id,commutation resistance=rc//
vd=500;// in kV//
id=1;// in kA//
// vd=vdo*cosd(a)-rc*id interchanging this we get//
rc=(vdo*cosd(a)-vd)/id;
printf("\n Effective commutation resistance = %.2f ohms\n",rc);