//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
R=0.05;//Total resistance of the motor in ohm
IL1=120;//Load current in A
V=220;//Terminal voltage in V
N=1200;//Speed in rpm
IL2=60;//Half load current in A

//CALCULATIONS
//Tnew=0.25*Told
//Hence percentage change in torque is 75% since it is (Told-Tnew)/Told*100
Ebnew=(V-(IL1*R));//New back emf in V
Ebold=(V-(IL2*R));//Old back emf in V
Nnew=(N*Ebnew*IL1)/(Ebold*IL2);//New speed in rpm
Pspeed=(Nnew/N)*100;//Percentage change in speed in %
//Ianew=(Iaold/sqrt(2))
I=sqrt(2)*100;//Percentage in current 
N1new=(sqrt(2)*Ebnew*N)/Ebold;//New speed in rpm
P1speed=(N1new/N)*100;//Percentage change in speed in %

//OUTPUT
mprintf('i)Percentage in speed is %3.2f and Percentage in torque is 75\nii)New speed is %3.0f rpm and new current is (1/sqrt(2)) times old current',Pspeed,N1new)

//=================================END OF PROGRAM==============================
