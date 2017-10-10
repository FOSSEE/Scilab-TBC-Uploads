//Chapter 5:Dc Motor Drives
//Example 6
clc;

//Variable Initialization

//The motor rating is same as that of Ex-5.5
N=600      //value of the speed given from the magnetization curve in Ex-5.5

Ra=0.04    //armature resistance in ohms
Rf=10      //field resistance in ohms
T=400      //load torque in N-m
N1=1200    //given speed in rpm to hold the overhauling torque

//Solution
Wm=2*%pi*N1/60    //angular speed at the given speed N1

//Magnetisation curve at N=600rpm
If=[2.5,5,7.5,10,12.5,15,17.5,20,22.5,25]       //field current in A
E =[25,50,73.5,90,102.5,110,116,121,125,129]    //value of the back emf as given in Ex-5.5 for the speed N in V

//Magnetisation curve at N=1200rpm
If=[2.5,5,7.5,10,12.5,15,17.5,20,22.5,25]       //field current in A
E1=N1/N*E                           //back emf at the speed N1
mprintf("Hence the magnetization curve at 1200rpm is")
disp(If,"Field current   If:in A")
disp(E1,"Back emf is     E1 in V:")

Pd=T*Wm                               //power developed
x=Pd*Ra
V=[]
for i=1:10
V($+1)=E1(i)-x/E1(i)
end
disp(V,"Terminal voltage V:in V")

//Results
//Plotting the values of V vs If
subplot(2,1,1)
plot(V,If)
xlabel('Terminal voltage V')
ylabel('Field current I_f')
title('V vs If')
xgrid(2)

//Plotting the values of E vs If
If=[2.5,5,7.5,10,12.5,15,17.5,20,22.5,25]       //field current in A
E =[25,50,73.5,90,102.5,110,116,121,125,129]    //value of the back emf as given in Ex-5.5 for the speed N in V
E1=N1/N*E                           //back emf at the speed N1

subplot(2,1,2)
plot(E1,If,'y')
xlabel('E')
ylabel('Field current I_f')
title('E vs If')
xgrid(2)

mprintf("\nFrom the plot we can see that when the current If=25 A the terminal voltage is V=250 V with the back emf E=258V")

E=258           //value of the back emf in V at from the plot 
V=250           //value of terminal voltage in V from the plot at E=258 V
If=25           //value of If in A from the plot at E=258 V
Ia=(E-V)/Ra     //armature current
If=V/Rf         //field current
Ir=Ia-If 
Rb=V/Ir         //braking resistance

mprintf("\nHence the rquired braking resistance is %.3f ohm",Rb)
