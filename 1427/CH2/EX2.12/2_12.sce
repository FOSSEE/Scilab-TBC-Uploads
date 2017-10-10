//ques-2.12
//Finding volume of air required for combustion of a gas
clc
V=1;//Volume of gas (in kL)
H=45;//Percentage of Hydrogen in gas
N=4;//Percentage of Nitrogen in gas
M=36;//Percentage of Methane in gas
C=15;//Percentage of Carbo monoxide in gas
v1=(H/100)*0.5;//Volume of Oxygen required for hydrogen (in kL)
v2=(M/100)*2;//Volume of Oxygen required for methane (in kL)
v3=(C/100)*0.5;//Volume of Oxygen required for carbon monoxide (in kL)
V=(v1+v2+v3)*(100/21);//Volume of air required (in kL)
printf("The volume of air required for combustion of gas is %.3f kL.\n",V);
