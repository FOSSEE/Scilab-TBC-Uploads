// sum 11-4
clc;
clear;
b=200;
t=16;
d=6*sqrt(t);
sigta=80;
Ta=60;
sigba=100;
Pt=(b-d)*t*sigta;
Ps=1.875*%pi*d^2*Ta/4;
Pb=d*t*sigba;
n1=Pt/Pb;
n1=6;
Pt2=((b-(2*d))*t*sigta)+Pb;
Pt3=((b-(3*d))*t*sigta)+(3*Pb);
Pp=b*t*sigta;
n2=Pt/Pp;
n2=n2*100;

  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d);
  printf("\n n1 is %0.0f      ",n1);
  printf("\n Pt is %0.0f N      ",Pt);
  printf("\n Pt2 is %0.0f N     ",Pt2);
  printf("\n Pt3 is %0.0f N     ",Pt3);
  printf("\n n2 is %0.0f      ",n2);
  
  //Answer to strength of rivet in bearing 'Pb' is calculated incorrectly in the book, hence Pt2,Pt3 is calculated subsequently incorrect.