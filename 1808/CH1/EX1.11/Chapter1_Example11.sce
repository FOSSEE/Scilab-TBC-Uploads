clc
clear
//INPUT DATA
BP=50;//Brake power in kW
nm=80;//mechanical efficiency in percentage
pmi=6;//mean effective pressure in bar
N=100;//no.of explosions/min
nc=1;//number of cylinders
n=1;//for single cylinder

//CALCULATIONS
IP=(BP*100/nm);//Indicated power in kW
x=(IP*60)/(pmi*100*N*nc);//dimension
d=(x*4/(3.14*1.5))^(1/3);//bore in m
L=1.5*d;//stroke in m
//OUTPUT
printf('(i)Dimensions of cylinder L %3.5f m \n d %3.5f m ',L,d)
