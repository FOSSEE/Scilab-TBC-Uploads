//Example 7.10
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
T=298;//temperature in K
To=353;//Equillibrium temperature in K
delHfus=19290;//Latent heat of fusion in J mol^-1

//To determine the ideal solubility of napthlene at 298 K
X=(delHfus/R)*((1/To)-(1/T));//X=log(x)
x=exp(X);//x is the solubility
mprintf('The ideal solubility of napthlene at 298 K = %f',x);
//end