// Chapter 4 Example 4//
clc
clear
// total load the consumer=tl,power factor=pf1//
tl=20;// in kW//
pf1=0.8;
// angle of power factor=a1//
a1=acosd(pf1);// in degrees//
pf2=0.95;// new power factor=pf2//
a2=acosd(pf2);
//original reactive power=r1,reactive power with power factor pf2=r2//
r1=tl/pf1;
r2=tl/pf2;
// rating of the capacitor required to raise the power factor=c//
c=r1*sind(a1)-r2*sind(a2);
printf("\n Rating of the capacitor = %.2f kVAr\n",c);
// power factor of the phase advancing device=pf3//
pf3=0.1;
a3=acosd(pf3);
a=a1-a2;
b=58.87;// in degrees//
c=102.45;
// rating of the device=r//
r=r1*sind(a)/sind(c);
printf("\n Rating of the device = %.2f kVA\n",r);





