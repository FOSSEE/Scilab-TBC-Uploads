//Chapter 5:Dc Motor Drives
//Example 7
clc;

//Variable Initialization

//Ratings of the DC series motor which operated under dynamic braking
Ra=0.5         //total resistance of armature and field windings in ohms
Rf=10          //field resistance in ohms
T=500          //overhauling load torque in N-m
N=600          //speed at the overhauling torque T in rpm

//Nagnetisation curve at a speed of 500 rpm
N1=500    //speed in rpm
Ia=[20, 30, 40, 50, 60, 70, 80]       //armature current in A
E =[215,310,381,437,482,519,550]     //back emf in V

//Solution
Wm1=2*%pi*N1/60
disp(Ia,"Armature current : in A")
Ke_flux=E / Wm1     //Ke*flux=constant
disp(Ke_flux,"Ke_flux :")
T=[]
for i=1:7
T($+1)=(Ke_flux(i))*(Ia(i))   //torque
end
disp(T,"Torque  :in N-m")


//Results
//Plotting the values of Ke*flux vs Ia and T vs Ia
subplot(2,1,1)
plot(Ia,Ke_flux,'y')
xlabel('Armature current I_a')
ylabel('Ke*flux')
title('Ke*flux vs Ia')
xgrid(2)

subplot(2,1,2)
plot(T,Ia)
xlabel('Torque T')
ylabel('Armature current I_a')
title('T vs Ia')
xgrid(2)

mprintf("\nFrom the plot we can see that at the given torque T=500 N-m the current Ia is 56 A, and Ke*flux is 8.9 at Ia=56 A")
Ke_flux=8.9    //value of Ke*flux at T=500 N-m from the plot
Ia=56          //value of Ia at at T=500 N-m from the plot
Wm=2*%pi*N/60
E=Ke_flux*Wm   //required emf
x=E/Ia         //x=Ra+Rb
Rb=x-Ra        //required braking resistance
mprintf("\nHence the rquired braking resistance is %.3f ohm",Rb)
