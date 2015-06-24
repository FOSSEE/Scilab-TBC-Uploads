//Chapter-2, Example 2.40, Page 2.75
//=============================================================================
clc
clear

//INPUT DATA
VLP=11000;//Primary line voltage in V
VLS=440;//Secondary line voltage in V
Vphp=11000;//Primary phase voltage in V
Vphs=(440/sqrt(3));//Secondary phase voltage in V
ILP=4;//Primary line current in A
q=0.8;//Power factor

//CALCULATIONS
Iphp=(ILP/sqrt(3));//Primary phase current in A
K=(Vphs/VLP);//Turn ratio
I2ph=(Iphp/K);//Secondary phase current in A
P=(sqrt(3)*VLS*VLP*q)/10^5;//Output of the transformer in kW

//OUTPUT
mprintf('Primary phase current is %3.2f A and Secondary phase current is %3.0f A \nOutput of the transformer is%3.0f kW',Iphp,I2ph,P)

//=================================END OF PROGRAM==============================
