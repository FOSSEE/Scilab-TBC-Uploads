clc
clear

//input
p=4;//number of poles
n1=3;//number of phases
f=50;//frequency in hertz
inp=60;//input to the motor in kW
l=0.06;//losses in per units

//calculations
w=2*%pi*(f/(p/2));//angular velocity in rad/sec
t=(inp*1000)/w;//total torque produced in newton meter
tu=t-(t*l);//useful torque in newton meter

//calculations
mprintf('the total torque and the useful torque of the machine are %3.0f Nm and %3.0f Nm respectively',t,tu)
