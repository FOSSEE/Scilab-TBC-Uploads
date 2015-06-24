//Chapter 5, Problem 22, figure 5.58
clc
f=100e6                             //supply frequency in hertz
Rs=50                               //resistance in ohms
Csh=42e-12                          //shunt capacitance in ohm
Rl=500                              //load resistance in ohm
Rp=Rl

//calculation
w=2*%pi*f
Qs=sqrt((Rp/Rs)-1)
Ls=(Rs*Qs)/w
Xs=w*Ls
Ca=1/(w*Xs)
Lp=((1+Qs^2)/Qs^2)*Ls

L=1/(w^2*Csh)
Lcom=(Lp*L)/(Lp+L)

printf("Matching network component value are,\n Ca = %.1f pF \n L (combined) = %d nH\n\n",Ca*10^12,Lcom*10^9)
disp("For the final network, shown in figure 5.61")
