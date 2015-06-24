//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

clc
clear
//INPUT DATA
N1=1500;//Initial speed in rpm
N2=1200;//Final speed in rpm
Ia1=30;//Initial armature current in A
V=300;//Terminal voltage in V
Ra1=0.5;//Initial armature resistance in ohm

//CALCULATIONS
R=(V-((N2/N1)*(V-(Ia1*Ra1))))/Ia1;//Total resistance in ohm
Rs=(R-Ra1);//Resistance to be added in ohm
n=((V-(Ia1*R))/V)*100;//Armature circuit efficiency
Nn2=(N2*(V-((Ia1/2)*R)))/(V-(Ia1*R));//New speed at half of the full load torque in rpm

//OUTPUT
mprintf('Resistance to be added to the existing armature resistance is %3.1f ohm \n Speed at half of the full load torque is %3.1f rpm',Rs,Nn2)

//=================================END OF PROGRAM==============================
