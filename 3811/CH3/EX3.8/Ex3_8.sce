//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.8
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vab=208;//source voltage in volts
Vs=Vab/3^(1/2);//rms voltage in volts
Vm=Vs*2^(1/2);//maximum peak voltage in volts
R=10;//resistance of the circuit in ohm
a1=80;//triggering angle 1 in degree
a2=30;//triggering angle 2 in degree
if a1<60 then
    disp(a1,'The current is discontinous')
else if (a2>60)
        disp(a2,'The current is discontinous')
end
disp('To find the power delivered at a1=80 degree:') 
B1=180;
p=(((3*Vm^(2))/(8*%pi*10))*(2*(B1-a1)*(%pi/180)+sind(2*a1)-sind(2*B1)));//power delivered when triggering angle a1=180 degree
P=p*10^-3;//power interms of kilowatt
disp(P,'The power delivered at the triggering angle 80 degree in kilowatt is')
disp('To find the power delivered at a2=30 degree:')
B2=120+a2;
p1=(((3*Vm^(2))/(8*%pi*10))*(2*(B2-a2)*(%pi/180)+sind(2*a2)-sind(2*B2)));//power delivered when triggering angle a2=30 degree
P1=p1*10^-3;//power interms of kilowatt
disp(P1,'The power delivered at the triggering angle 80 degree in kilowatt is')
