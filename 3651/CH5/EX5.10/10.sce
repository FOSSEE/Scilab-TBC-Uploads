//Variable declaration
A=94;      //area(m**2)
vy=0.1;    //value of length(weber/m**2)
vx=20;     //value of unit length
n=50;      //number of magnetization cycles
d=7650;    //density(kg/m**3)

//Calculation
h=A*vy*vx;     //hysteresis loss per cycle(J/m**3)
hs=h*n;       //hysteresis loss per second(watt/m**3)
pl=hs/d;      //power loss(watt/kg)

//Result
printf('hysteresis loss per cycle is  %0.3f    J/m**3 \n',h)
printf('hysteresis loss per second is  %0.3f   watt/m**3  \n',hs)
printf('power loss is %0.3f watt/kg\n',(pl))