//============================================================================
//Chapter 6 Example 29


clc;
clear all;

//variable declaration
Vs      = 63+0*%i;          //secondary terminal voltage in V
Zs1     = 2+1*%i;           //equivalent mpedance referred to prmary in Ω
Zb      = 100+200*%i;           //secondary burden in  Ω
KN      =60.5;



//calculations
KT      = 3810/63;          //turn ratio
Ep      = KT*Vs;            //primary induced emf in V
Zp1     = (KT^2)*Zs1;           //equivalent impedance 
Zs12     = sqrt(((real(Zp1))^2)+((imag(Zp1))^2));
Is          = Vs/Zb;            //secondary current in A
Is1    = sqrt(((real(Is))^2)+((imag(Is))^2));
Ip          = Is/KT;            //primary current in A
Ip1    = sqrt(((real(Ip))^2)+((imag(Ip))^2));
Vp          = Ep+(Ip*Zp1);      //applied voltage to primary in V
Vp1    = sqrt(((real(Vp))^2)+((imag(Vp))^2));
beta        = (atan((imag(Vp))/real(Vp)))*180/%pi;                    //phase angle  error in °
e           = (((KN*Vs)-Vp)/Vp)*100;            //ratio error in percentage 
//beta        = (atan((imag(Zp1))/real(Zp1)))*180/%pi;  

//result
mprintf("phase angle  error = %3.2f °",beta);
mprintf("ratio error = %3.1f percentage ",e);
