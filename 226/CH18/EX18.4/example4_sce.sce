//chapter 18
//example 18.4
//page 766
printf("\n")
printf("given")
hFE3=50;hFE1=20;Ie1=200*10^-3+10*10^-3;Ic2=1*01^-3;Vs=20;Vb3=13.4;Vo=12;Vbe=.7;
Ib1=Ie1/hFE1
Ib3=Ib1/hFE3
R1=(Vs-Vb3)/(Ic2+Ib3)
disp("select I6=.5*10^-3")
I6=.5*10^-3;
R6=(Vo+Vbe)/I6
Pd=(Vs-Vo)*Ie1