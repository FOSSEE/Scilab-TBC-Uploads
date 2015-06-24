clear
clc
X1=4/100;// amount of NH3 solution
X2=(1-X1);//amount of water]
P=17;//vapour pressure of pure water
PT=50;//total pressure in torr
P2=(P*X2);//vapour pressure of water in torr
P1=(PT-P2);//vapour pressure of NH3 in torr
Kh=P1/X1;//Henry's constant for NH3 in torr
X=5/100;//mol % of solution
P10=Kh*X;//pressure of NH3 at 5% mol in torr
printf('P10=%.1f torr',P10)
P20=P*(1-X);//pressure of water at 5% mol in torr
printf('\nP20=%.1f torr',P20)
PT0=(P10+P20);//total pressure for 5% of mol solution in torr
printf('\nPT0=%.1f torr',PT0)

//There are some errors in the solution given in textbook
//page 119
