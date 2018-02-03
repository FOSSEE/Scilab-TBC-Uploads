//================================================================================
//chapter 7 example 23

clc;
clear all;

//variable declaration
VAB1     = 400+0*%i;     //voltage in V
VBC1    = -200-346.41*%i;     //voltage in V
VCA1     = -200+346.41*%i;     //voltage in V
VAB         =400;
VBC         = 400;
VCA         = 400;
TVAB        = 0;
TVBC        = -120;
TVCA        =120;
PAB         = 20000;        //Wwattmetr readig VA
PBC         = 30000;        //Wwattmetr readig VA
PCA         = 20000;        //Wwattmetr readig VA


//calculations
IAB        = PAB/VAB;          //magnitude of IABC
IBC        = PBC/VAB;          //magnitude of IABC
ICA        = PCA/VAB;          //magnitude of IABC
c1          = 0;
c2          = (acos(0.8)*180/%pi);
c3          = -(acos(0.6)*180/%pi);
angle1      = c1-TVAB;
angle2      = c2-TVBC;
angle3      = c3-TVCA;
IAB1         = (IAB*cos(angle1))+(IAB*sin(angle1))*%i;
IBC1         = (IBC*cos(angle2*%pi/180))+(IBC*sin(-angle2*%pi/180))*%i;
ICA1         = (ICA*cos(angle3*%pi/180))+(ICA*sin(-angle3*%pi/180))*%i;
IA          = IAB1-ICA1;
IB          = IBC1-IAB1;
IC          = ICA1-IBC1;
W1          = -(VBC1)*IA;
W2          = VCA1*IB;



//result
mprintf("line current IA    = %3.2f %3.2f *j A",real(IA),imag(IA));
mprintf("\nline current IA    = %3.2f%3.2f*j A",real(IB),imag(IB));
mprintf("\nline current IA    = %3.2f + %3.2f*j A",real(IC),imag(IC));
mprintf("\nreading of wattmeter  W1    = %3.2f W",W1);
mprintf("\nreading of wattmeter  W2    = %3.2f W",W2);
