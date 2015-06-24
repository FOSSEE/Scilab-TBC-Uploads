//Chapter-2, Example 2.41, Page 2.77
//=============================================================================
clc
clear

//INPUT DATA
VLP=2200;//Primary line voltage in V
Vphp=VLP;//Primary phase voltage in V
VLS=440;//Secondary line voltage in V
Vload=440;//Load line phase voltage in V
Z=complex(8,6);//Load impedence in complex form

//CALCULATIONS
X=sqrt((real(Z))^2+(imag(Z))^2);//X value for load current
Y=atand(imag(Z)/real(Z));//Phase angle in degree
ILS=(VLS/X);//Load current in A
PS=(sqrt(3)*VLS*ILS*cosd(Y))/1000;//Power delivered by secondary in kW
K=((Vload/sqrt(3))/VLP);//Turn ratio
IPS=(sqrt(3)*ILS);//Secondary phase current in A
IPP=(K*IPS);//Primary phase current in A

//OUTPUT
mprintf('a)Load delivered by the secondary is %3.1f kW \nb)Current in primary is %3.1f A and Current in secondary is %3.2f A',PS,IPP,IPS)

//=================================END OF PROGRAM==============================
