//Example 8.32
clear;
clc;

//Given
n1=1;//moles of acetic acid and ethanol initially mixed
n2=0.667;//moles of easter and water produced

//To determine the equillibrium constant
n3=1-0.667;//moles of acid and ethanol remaining
N=2;//total number of moles of reactants taken
Ka=((n2/N)*(n2/N))/((n3/N)*(n3/N));
mprintf('Equillibrium constant for the reaction = %f',Ka);
//end