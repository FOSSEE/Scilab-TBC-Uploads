//example 5.33

clear;
clc;

//Given:
P=94.6;//The vapour pressure of pure benzene at 298K[torr]
n1=20;//no. of moles of pure benzene
n2=5;//no. of moles of pure naphthalene

//To find the partial vapour pressure of benzene over the solution
x=n1/(n1+n2);//(mole fraction of benzene)
p=x*P;//the partial vapour pressure of benzene[torr]
printf("The partial vapour pressure of benzene is %f torr",p);