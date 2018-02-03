//===========================================================================
//chapter 6 example 26
clc;
clear all;

//variable declaration
KT	= 199;		//turn ration
Is	= 5;		//secondary current in A
Im	= 7;		//magnetising component of exciting current in A
Ie	= 4;		//cross-loss component of exciting current in A
delta	=0;

//calculations
KN	= 1000/5             //nominal ratio
alpha	=atan(Ie/Im)	//angle in ° 
alpha1  = (alpha*180)/%pi     
theta	= delta+(((acos(0.8))*180)/%pi)     //from figure taken the value of gamma
z   = cos((theta*%pi)/180)
z1  = sin(((theta)*%pi)/180)
Kc	= KT+(((Ie*z)+(Im*z1))/Ie)  //actual current in A
e	= ((Kn-Kc)/Kc)*100	//ratio error
b	=(180/%pi)*(((Im*z)-(Ie*z1))/(KT*Is))
theta1	= delta-(((acos(0.8))*180)/%pi)    //from figure taken the value of gamma
z11   = cos((theta1*%pi)/180)
z12  = sin(((theta1*%pi)/180))
Kc1	= KT+(((Ie*z11)+(Im*z12))/Is)	//actual current in A
e1	= ((Kn-Kc1)/Kc1)*100	//ratio error
b1	=(180/%pi)*(((Im*z11)-(Ie*z12))/(KT*Is))


//result
mprintf("ratio error = %3.2f  percentage",e);
mprintf("\nphase angle error = %3.1f °",b);
mprintf("\nratio error = %3.2f percentage",e1);
mprintf("\nphase angle error = %3.2f percentage°",b1);
