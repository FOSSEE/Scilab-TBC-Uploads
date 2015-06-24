//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.27w
//calculation of position of the object to get a focused image

//given data
v=10; //image distance(in cm) from the convex lens
u=-10; //object distance(in cm) from the convex lens
mu=1.5; //refractive index of glass
t=1.5; //thickness(in cm) of the glass plate inserted

//calculation
f=1/((1/v)-(1/u)) //lens formula
I1I=t*(1-1/mu) //shift in position(in cm) of image due to glass plate
v_new=v-I1I //lens forms image at this distance(in cm) from itself
u_new=1/((1/v_new)-(1/f)) //lens formula
 
disp(abs(u_new),'from the lens,the object should be placed at a distance(in cm) of');




