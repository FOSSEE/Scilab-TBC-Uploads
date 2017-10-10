clc
clear
//INPUT DATA
BP=60;//Brake power in kW
nm=0.8;//mechanical efficiency in percentage
d=0.15;//bore in m
L=0.15;//stroke in m
n=4;//for 6 cylinders
Ps=510;//piston speed in m/min
pmi=5;//mean effective pressure in bar


//CALCULATIONS
IP=(BP/nm);//indicated power in kW
A=(3.14*d^2/4);//area
ne=(IP*60)/(pmi*100*L*A*n);//No.of explosions
N=(Ps/(2*L));//speed of the engine in rpm

//OUTPUT
printf('(i)No.of explosions are %3.2f /min \n (ii)speed of the engine is %3.d rpm ',ne,N)
