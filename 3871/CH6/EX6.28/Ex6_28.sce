//============================================================================
//Chapter 6 Example 28


clc;
clear all;

//variable declaration
Vs          = 100+0*%i;         //secondary terminal voltage in V
Rp          = 97.5;             //primary resistance in Ω
Xp          = 67.4;             //primary reactance in Ω
X1          = 110;              // total equivalent reactance in Ω
K           =1000/100;



//calculations
//Es          = Vs+(Is*(Rs+Xs*%i);
Es          = Vs;
Ep          = 10*(100+0*%i);        //induced emf in primary winding in V
I0          = 0.02*(0.4-0.9165*%i);         //no load current in A
Zp          = Rp+Xp*%i;
Vd          = I0*Zp;
Vp          = Ep+Vd;
beta        = (atan((imag(Vp))/real(Vp)))*180/%pi;                    //phase angle between primary and secondary voltage in °
Xs1         = X1-Xp;            //reactance of secondary winding in Ω
//Es          = Vs+(Is*Zs);           //induced emf in secondary winding 
//IP          = (Is/10)+I0;
//V         = Ip*Zp = (IS/10)+0.008-0.01833*i
//V         = (9.75*Is)+2.015)-((1.2478-6.74*Is)*%i).....equation 1
//Vp        = K*(ES+IP*ZP)
//VP        =(1002.015+18.35*%i)-(1.2478-11*Is)*%i....equation 2
//comparing equation 1 and 2 we get
//1.2478-11*Is  =0;
Is      = 1.2478/11;            //secondary current in A
v          = Vs*Is;

//result
mprintf("phase angle between primary and secondary voltage = %3.2f ° lagging",beta);
mprintf("\nvolt ampere rating for zero phase angle = %3.2f",v);
mprintf("\nnote:Is values is taken as 0.114 wchich is approximate when answer is 0.1134");

