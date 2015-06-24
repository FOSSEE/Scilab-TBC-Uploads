//chapter-3 page 50 example 3.6
//==============================================================================
clc;
clear;

Zl=100;//Pure Load resistance of a dipole antenna in ohms
Z0=600;//Characteristic Impedance of a wire feeder in ohms
f=100*10^6;//Frequency in Hz
c=3*10^8;//Velocity of Light in m/sec

//CALCULATIONS
w=c/f;//Wave Length in met
l=((w/(2*(%pi)))*atan(sqrt(Zl/Z0)));//The position of the Stub in met
x=atand(sqrt((Zl*Z0))/(Zl-Z0));
y=180+x;//In Degrees
l1=((w/(2*(%pi)))*y);//Length of Short Circuited Stub in met
l0=l1*((%pi)/180);

//OUTPUTS
mprintf('\nThe Point of Attachment is l=%1.3f met \nLength of SC Stub is l1=%1.2f met',l,l0);

//=========================END OF PROGRAM==============================================================



