//Chapter 9 Example 3//
clc
clear
// radius of each conductor=r,distance beween the seperation of conductors=d//
r=2;// in cm//
d=300;// in cms//
// inductance of conductor=l//
r1=0.7788*r;
l1=2*10^-7*(log(d/r1));
printf("\n Inductance of one conductor = %.9f H/m\n",l1);
// to convert it into mH/km multiply by 10^6//
// loop inductance =l//
l=2*l1*10^6;// 10^6 conversion factor//
printf("\n Loop Inductance = %.3f mH/km\n",l);


