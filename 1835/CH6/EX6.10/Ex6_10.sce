

//CHAPTER 6 ILLUSRTATION 10 PAGE NO 183
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
pi=3.141
Cs=.02//     coefficient of fluctuation of speed 
N=200//      speed of the engine in rpm
//T2=15000-6000cosθ         Torque required by the machine in Nm
//T1=15000+8000sin2θ        Torque supplied by the engine in Nm
//T1-T2=8000sin2θ+6000cosθ     Change in torque
theta1=acosd(0)
theta2=asind(-6000/16000)
theta2=180-theta2
//===============================================
//largest area,representing fluctuation of energy lies between theta1 and theta2
E=6000*sind(theta2)-8000/2*cosd(2*theta2)-(6000*sind(theta1)-8000/2*cosd(2*theta1))//      total fluctuation of energy in Nm
Theta=180//    angle with which cycle will be repeated in degrees
Theta1=0
Tmean=1/pi*((15000*pi+(-8000*cosd(2*Theta))/2)-((15000*Theta1+(-8000*cosd(2*Theta1))/2)))//     mean torque of engine in Nm
P=2*pi*N*Tmean/60000//      power of the engine in kw
w=2*pi*N/60//           angular speed of the engine in rad/s
I=E/(w^2*Cs)//          mass moment of inertia of flywheel in kg-m^2
printf('Power of the engine= %.3f kw\n minimum mass moment of inertia of flywheel= %.3f kg-m^2\n E value calculated in the textbook is wrong. Its value is -15,124. In textbook it is given as -1370.28',P,-I)
