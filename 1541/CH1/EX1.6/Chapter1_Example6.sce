//Chapter-1, Example 1.6, Page 1.18
//=============================================================================
clc
clear

//INPUT DATA
P=4;//Number of poles
Z=400;//Number of conductors
q=0.03;//Flux per pole in Wb
Eg=250;//Generated emf in V
A1=4;//Number of parallel paths in lap wound
A2=2;//Number of parallel paths in wave wound

//CALCULATIONS
N1=(60*Eg*A1)/(q*Z*P);//Speed reqired in lap wound in rpm
N2=(60*Eg*A2)/(q*Z*P);//Speed reqired in wave wound in rpm

//OUTPUT
mprintf('Speed reqired in lap wound is %3.0f rpm \nSpeed reqired in wave wound is %3.0f rpm',N1,N2)

//=================================END OF PROGRAM==============================
