//find diameter of shaft
clc
//solution
//given
f=100//N/mm^2
//let Ra and Rb be reaction at A and B
//taking moment about A
Rb={(35*750)+(25*150)}/950//kN
Ra=25+35-Rb//kN
//since maximum stress is taken into account, therfore maximum moment will be taken into calculations...
Mc=Ra*150//N-mm
Md=Rb*200//N-mm
//Z=(pi/32)*d^3=0.0982*d^3
//100=Md/Z//because Md>Mc
d=[Md*1000/(100*0.0982)]^0.33
printf("the diametr is,%f mm",d)