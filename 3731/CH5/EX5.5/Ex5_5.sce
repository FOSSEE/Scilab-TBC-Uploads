//Chapter 5:Dc Motor Drives
//Example 5
clc;

//Variable Initialization

//Ratings of the DC shunt motor which operated under dynamic braking
Rb=1      //braking resisance in ohms
Ra=0.04   //armature resistance in ohms
Rf=10     //field resistance in ohms
T=400     //load torque in N-m

//Magnetisation curve at N1
N1=600    //speed in rpm
If=[2.5,5,7.5,10,12.5,15,17.5,20,22.5,25]    //field current in A
E =[25,50,73.5,90,102.5,110,116,121,125,129] //back emf in V

//Solution
disp(If,"Field current   If:in A")
x=(Rb+Rf)/Rb
Ia = If * x                           //armature current
Wm=2*%pi*N1/60
Ke_flux=E / Wm     //Ke*flux=constant
T=[]
for i=1:10
T($+1)=(Ke_flux(i))*(Ia(i))   //torque
end
disp(Ke_flux,"Ke_flux :")
disp(T,"Torque  :in N-m")


//Results

//Plotting the values of Ke*flux vs If 
If=[2.5,5,7.5,10,12.5,15,17.5,20,22.5,25]    //field current in A
subplot(2,1,1)
plot(If,Ke_flux,'y')
xlabel('field current I_f')
ylabel('Ke*flux')
title('If  vs  Ke*flux')
xgrid(2)

//Plotting the values of  T vs If 
If=[2.5,5,7.5,10,12.5,15,17.5,20,22.5,25]    //field current in A
subplot(2,1,2)
plot(T,If)
xlabel('Torque T')
ylabel('field current I_f')
title('T vs If')
xgrid(2)


mprintf("\nFrom the plot we can see that when the torque is 400 N-m, ")
mprintf("\nthe field current is If=19.3 A, and Ke*flux=1.898 when If=19.3 A")
T=400          // braking torque in N-m
If=19.13       // field current in A
Ke_flux=1.898  // Ke*flux
Ia=x*If
E=If*Rf+Ia*Ra    //since E=V+Ia*Ra
N2=(E/Ke_flux)*(60/(2*%pi))  //required speed
mprintf("\nHence the required speed in is :%.1f rpm",N2)
