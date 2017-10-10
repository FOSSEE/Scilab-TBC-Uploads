//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_14.sce

clc;
clear;

//i(t)=sqrt(2)*1e-4*cos(4*10^7*t);
a1=complex(5,4.04);b1=complex(0,-0.04);c1=1/10;                                  //these are the coefficient values of VA,VB and source obtained from the node A in the given circuit 
a2=complex(200,-0.04);b2=complex(1.2,-1.56);c2=0;                                 //these are the coefficient values of VA,VB and source obtained from the node  B in the given circuit 
del=det([a1 b1;a2 b2]);
delB=det([a1 c1;a2 c2]);
VB=delB/del;

VB_mag=sqrt(real(VB)^2+imag(VB)^2);
VB_ang=atand(imag(VB)/real(VB))+180;
printf("\n   Vo=%1.1f angle:%3.1f degree \n",VB_mag,VB_ang)

//Answer vary due to  roundoff error
//Result:Vo(t)=sqrt(2)*1.5*cos(4*10^7*t+157.7)
