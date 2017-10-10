clc
clear
//INPUT DATA
//aC4H10+ b O2+c N2= 7.8 CO2+1.1 CO +8.2 O2+82.9 N2+d H2O ;//Combustion equation
c=82.9;//Nitrogen balance
b=22.04;//(c/b)=3.76
a=2.22;//Carbon balance
d=11.1;//Hydrogen balance
Ma=29;//mass of air

//2.22C4H10+ 22.04 O2+82.9 N2= 7.8 CO2+1.1 CO +8.2 O2+82.9 N2+11.1 H2O ;//Combustion equation

//CALCULATIONS
//C4H10+ 9.92 O2+37.37 N2= 3.51 CO2+0.495 CO +3.69 O2+37.37 N2+5 H2O ;//Combustion equation dividing by 2.22 yields one mole of fuel
xm=((9.92+37.37)*Ma)/(12*4+10);//air fuel ratio on mass basis

//C4H10+ 6.5 O2+(6.5*3.76) N2= 4 CO2++24.44 N2+5 H2O ;//Theoretical Combustion equation
xth=((6.5+24.44)*Ma)/(12*4+10);//Theoretical air fuel ratio 
nth=(xm/xth)*100;//Percentage of theoretical air

//OUTPUT
printf('(a)Percentage of theoretical air %3.2f percentage',nth) 




