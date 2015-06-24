clc
//Chapter7
//Ex_6
//Given
//power dissipated at a given voltage per unit capacitance depends only on w*tan(delta)
//at f=60 //in Hz.
f=60 //in Hz.
w=2*%pi*f
//let x=tan(delta)
x_PC=9*10^-4 //Ploycarbonate
x_SR=2.25*10^-2 //Silicone rubber
x_E=4.7*10^-2 //Epoxy with mineral filler
p_PC=w*x_PC
p_SR=w*x_SR
p_E=w*x_E
a=min(p_PC,p_SR,p_E)
printf("The minimum w*tan(delta) is %f which corresponds to polycarbonate",a)
disp("Hence the lowest power dissipation per unit capacitance at a given voltage corresponds to polycarbonate at 60Hz")
//at f=1 //in MHz.
f=10^6 //in Hz.
w=2*%pi*f
//let x=tan(delta)
x_PC=1*10^-2 //Ploycarbonate
x_SR=4*10^-3 //Silicone rubber
x_E=3*10^-2 //Epoxy with mineral filler
p_PC=w*x_PC
p_SR=w*x_SR
p_E=w*x_E
a=min(p_PC,p_SR,p_E)
printf("The minimum w*tan(delta) is %f which corresponds to Silicone rubber",a)
disp("Hence, the lowest power dissipation per unit capacitance at a given voltage corresponds to Silicone rubber at 1MHz")
