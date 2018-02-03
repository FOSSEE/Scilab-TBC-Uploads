//===========================================================================
//chapter 6 example 25

clc;
clear all;

//variable declaration
KT	= 201;		//turn ration
Ie	= 3;		//cross loss  current in A
Im	= 7;		//magnetising component of exciting current in A
delta	=0;

//calculations

theta	= delta+(((acos(0.8))*180)/%pi);	//from figure taken the value of gamma
z   = cos((theta*%pi)/180);
z1  = sin(((theta)*%pi)/180);
Kc	= KT+(((Ie*z)+(Im*z1))/Is);      //actual current in A
e	= ((Kn-Kc)/Kc)*100;		//ratio error
b	=(180/%pi)*(((Im*z)-(Ie*z1))/(KT*Is));

//result
mprintf("ratio error = %3.3f percentage",e);
mprintf("\nphase angle error = %3.4f °",b);
