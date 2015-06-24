clc
//Chapter8
//Example8.22, page no352
//Given
Zin=25+%i*15// Internal Impedance
Zr=70-%i*42//load
f=3e6//operating freq
v=3e8//light velocity
L=v/(4*f)//length of the line

Zo=sqrt(Zin*Zr)//Characteristic Impedance
mprintf('The lrngth should be %d metres\nThe Characteristic Impedance should be %f ohms',L,Zo)








