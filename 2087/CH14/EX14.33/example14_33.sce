

//example 14.33
//design Laecey regime channel
clc;funcprot(0);
//given
A=100000;            //culturable area(hectare)
IR=0.4;              //intensity of irrigation in kharif season
IK=0.3;              //intensity of irrigation in rabi season
OR=1800;             //outlet discharge factor in kharif season
OK=800;              //outlet discharge factor in kharif season
l=0.1;              //conveyance loss
md=0.328;            //average diameter of material

AR=A*IR;           //area under rabi
AK=A*IK;           //area under kharif  
Qr=AR/OR;
Qk=AK/OK;
Q=1.1*Qk;
f=1.76*(md)^0.5;
V=(Q*f^2/144)^(1/6);
A=Q/V;
P=4.75*(Q)^0.5;
D=(P-(P^2-6.944*A)^0.5)/3.472;
B=P-2.236*D;
S=f^(5/3)/(3340*Q^(1/6));
B=round(B*10)/10;
D=round(D*100)/100;
mprintf("\nBed slope=%f.",S);
mprintf("\nWidth of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
