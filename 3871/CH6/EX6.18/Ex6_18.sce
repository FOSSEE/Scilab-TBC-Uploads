//===========================================================================
//chapter 6 example 18

clc;
clear all;

//variable declraration
Ts	= 300;	//number of turns in secondary winding
Tp	= 1;	//number of turns in primary winding
Is	=5;	//current in A
Zs	=(1.5)+(%i*1)	//secondary impedance ‎Ω
MMF	= 100;
Pi	= 1.2;		//iron loss in watts
KN  = 300;         //turn ratio


//calculations
KT	=Ts/Tp;      //turn ratio
Es	= Is*Zs;     //secondary voltage in volts
Es1     = sqrt(((real(Es))^2)+((imag(Es))^2));
Im	=MMF/Tp;                 //magnetising current in A
E	= Pi/Es1;                 //energy compnent of exciting current on secondary side in A
Ie	= KT*E;                  //energy compnent of exciting current on primary side in A
I0	= Im+%i*Ie;              //exciting current on primary side in A
I01    =sqrt(((real(I0))^2)+((imag(I0))^2));
alpha	= atan(Ie/Im);
alpha1  = (alpha*180)/%pi;
theta	= atan(imag(Zs)/real(Zs));
theta1  = (theta*180)/%pi;
KC	= KT+((I01*sin(((theta1+alpha1)*%pi)/180))/Is);     //actual current ratio 
e	= ((KN-KC)/KC)*100;               //percentage ratio error in %
b	= (I01*cos((((theta1+alpha1)*%pi)/180)))/(KT*Is);         //phase angle in radians
b1  = b*(180/%pi);          


//result
mprintf("percentage ratio error =%3.2f   percentage ",e);
mprintf("\nphase angle = %3.2f °",b1);


