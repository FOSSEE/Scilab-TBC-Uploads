//Chapter-3, Example 3.2, Page 3.6
//=============================================================================
clc
clear

//INPUT DATA
N=600;//Speed of 12 pole 3 phase alternator in rpm
P=12;//No. of poles of alternator
n=6;//No. of poles in induction motor
s=2.5;//slip of the motor in %

//CALCULATIONS
f=(N*P)/120;//Alternator supply frequency in Hz
Ns=(120*f)/n;//Synchronous speed in rpm
N1=(Ns-((s*Ns)/100));//Full load speed of the motor when the slip is 2.5%

//OUTPUT
mprintf('Full load speed of the motor when the slip is 2.5 percent = %irpm',N1)

//=================================END OF PROGRAM==============================
