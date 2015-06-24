clc
clear
//Initialization of variables
h1=1172 //Btu/lb
hf1=355.36 //Btu/lb
hfg1=843 //Btu/lb
//calculations
h2=h1
x1= (h2-hf1)/hfg1
//results
printf("Quality of steam = %.1f percent",x1*100)
