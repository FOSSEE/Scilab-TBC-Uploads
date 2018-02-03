//===========================================================================
//chapter 6 example 19
clc;
clear all;

//variable declraration
Ts	= 200;	//number of turns in secondary winding
Tp	= 1;	//number of turns in primary winding
Is	= 5;	//current in A
Zs	= (1.2+0.2)+(%i*(0.5+0.3));	//secondary impedance ‎Ω
MMF	= 100;
Pi	= 1.2;		//iron loss in watts
Ie	= 50;		//energy component of eddy current in A



//calculations
KT	=Ts/Tp           //turn ratio
//Es	= Is*Zs          //secondary voltage in volts
Im	=MMF/Tp          //magnetising current in A
I0	= Im+%i*Ie      //exciting current on primary side in A
I01    =sqrt(((real(I0))^2)+((imag(I0))^2))
alpha	= atan(Ie/Im) 
alpha1  = (alpha*180)/%pi

theta	= atan(imag(Zs)/real(Zs))
theta1  = (theta*180)/%pi
Ip	= (KT*Is)+(I01*sin(theta+alpha))          //primary current in A
e	= ((-I01*sin(((theta1+alpha1)*%pi)/180))/Ip)*100       //ratio error 
N	= (I01*sin(((theta1+alpha1)*%pi)/180))/Is            //number of secondary turns to be reduced 

//result
mprintf("ratio error = %3.1f percentage",e);
mprintf("\nnumber of secondary turns to be reduced  = %3.0f ",N);
