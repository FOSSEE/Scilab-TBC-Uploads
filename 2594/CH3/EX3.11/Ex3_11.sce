clc
A=0.1*10^-4
disp("A = "+string(A)+" cm^2") //initializing value of area.
Dp=7.77*10^-4
disp("Dp= "+string(Dp)+" cm^2/s") //initializing value of diffusion cofficient.
Lp=0.233*10^-5
disp("Lp = "+string(Lp)+" cm") //initializing value of diffusion length.
x=500*10^-8
disp("x = "+string(x)+" cm") //initializing value of distance
P=10^17*10^6
disp("P(O)-po = "+string(P)) //initializing value of P(O)-po 
e=1.6*10^-19
disp("e = "+string(e)+"column")//initializing value of charge of electron.
I=(((e*A*Dp*P)/Lp)*exp(-x/Lp))
disp("Hole current,I=(((e*A*Dp*[P(O)-po])/Lp)*exp(-x/Lp))= "+string(I)+"amphere")//calculation
Q=(e*A*Dp*Lp*P)
disp("stored excess hole ,Q=(e*A*Dp*Lp*P))= "+string(Q)+"C")//calculation

//the value of current(I) given after calculation in the book is wrong, (as the value of Lp used in the formula while finding value of hole current (I)at two places //is used different).
//I have used the value Lp=0.233*10^-5 cm
