clear
clc
Ac=10;//
Ab=1;//
Kd=Ab/Ac;//
wn=0.01;//in gm
w=1.00;//in gm
Vb=100;//in cm^3
Vc=10;//in cm^3
n=log10(wn/w)/(log10((Kd*Vb)/((Kd*Vb)+Vc)));//
printf('n=%.1f',n)
V=n*10;//in am^3
printf('\nV=%.1d',V)

//approximately equal to 7,n=7 is taken in the text book
////There are some errors in the solution given in textbook
//page 202
