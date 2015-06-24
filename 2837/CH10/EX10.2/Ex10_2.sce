clc
clear
//Initialization of variables
h=1100 //Btu/lb
P=100 //psia
//calculations
disp("From table 2 of keenan and keynes,")
hg=1187.2 //Btu/lb
hfg=888.8 //Btu/lb
y=-(h-hg)/hfg
//results
printf("The state is %d psia with a moisture content of %.2f percent",P,y*100)
