//===========================================================================
//chapter 6 example 20

clc;
clear all;

//variable declraration
Ts	= 300;	//number of turns in secondary winding
Tp	= 3;	//number of turns in primary winding
Is	= 5;	//current in A
Zs	= (0.583)+%i*(0.25);	//secondary impedance ‎Ω
n1	=10;
n2	=5;

//calculations
KT	=Ts/Tp;		//turn ratio
Es	= Is*Zs;		//secondary voltage in volts
Nm	= n1*Es;		//total magnetising amp-turns
Ni	=n2*Es;		//total iron loss amp-turns
Im	=Nm/Tp;		//magnetising componenet of exciting  current in A
Ie	= Ni/Tp;		//
I0	= Im+%i*Ie;	//exciting current on primary side in A
I01    =sqrt(((real(I0))^2)+((imag(I0))^2))
alpha	= atan(Ie/Im);	//energy component of exciting current in A
alpha1  = (alpha*180)/%pi
theta	= atan(imag(Zs)/real(Zs));
theta1  = (theta*180)/%pi
x   = sin(((theta1+alpha1)*%pi)/180)
Ip	= (KT*Is)+(I01*x);	//primary current in A
y   = cos(((theta1+alpha1)*%pi)/180);
b	=(180/%pi)*((I01*y)/(KT*Is));		//phase angle 


//result
mprintf("primary current  = %3f. A",y);
mprintf("\nphase angle  = %3.3f ",b);

