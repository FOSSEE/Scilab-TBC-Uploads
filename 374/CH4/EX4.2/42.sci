//chapter 4 example 2//
clc
clear
//core radius=r,radiance of the device=Rd,numerical aperture=NA,reflection coeffcient at index matched filter=R,optical power coupled to the fibre=Pc,area=A//
r=25*(10^-4);
A=%pi*(r*r);
R=0.01;//frencel reflection coeffcient//
Rd=30//in W sr-1 cm-2//
NA=0.18;//numerical aperture//
Pc=%pi*(1-R)*A*Rd*NA*NA*(10^6);
printf("\n optical power coupled to the fibre=%f microwatt \n",Pc);