clc
e=1.6*10^-19
disp(" Electron charge  = "+string(e)+"columns") //initializing the value of electron charge.
no=2.5*10^13
disp("Number of free electrons/cm^3 in Ge ,n=2.5*10^13)= "+string(no)+"electrons/cm^3")//calculation
n=(1/e)
disp("Number of free electrons in 1 columns ,n=(1/e))= "+string(n))//calculation
i=(1/n)
disp("Current by movement of one electrons ,i=(1/n))= "+string(i)+" amphere ")//calculation
I=(no*i)
disp("Current by movement of (2.5*10^13) electrons in Ge,I=(no*i))= "+string(I)+" amphere ")//calculation
