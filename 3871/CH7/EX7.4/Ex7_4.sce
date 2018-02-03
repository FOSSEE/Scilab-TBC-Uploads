//===========================================================================
//chapter 7 example 4

clc;clear all;

//variable declaration
w	= 23;		//wattmeter reading in watts
Rp	= 2000;		//resistance in Ω
f	= 100;		//frequency in Hz
L	= 10*10^-3	//inductance 
V	= 240;		//voltage in V
I	= 4.5;		//current in A

//calculations
Xp	= 2*%pi*f*L;	//reactance in  Ω
theta	= atan(Xp/Rp);
theta1  =(theta*180)/(%pi)
//cos(phi)=P/V*I
//phi 	= acos(P/V*I)
//w	= Pt*(cos(theta))*(cos(phi-theta))/cos(phi);	//wattmeter reading 
W1      = V*I;          //V*I in watts
//phi   = acos(P/W) = acos(P/1080)
//W     = P*cos(theta)*(cos(phi-theta))/cos(phi)
//W     =23 =P*cos(0.18)*cos((acos(P/1080))-0.18)/(P/V*I)
//let cos(acos(P/1080)-0.18) =A
//B = cos(0.18)
//W=23  = (P*B*A)/(P/(V*I))
// W= B*A*V*I
//A     = W/(B*V*I)
B      = cos((theta1*%pi)/180); 
A       = w/(B*V*I);
//cos(acos(P/1080)-0.18) =A
//C  =acos(P/1080)   = acos(A)+0.18
A1      =(acos(A))*(180/%pi);
C       = A1+0.18
D       = cos(C*%pi/180)
P       =1080*D;
e	= ((w-P)/P)*100;		//percentage error in %

//result
mprintf("percentage error in %3.2f percentage ",e);

