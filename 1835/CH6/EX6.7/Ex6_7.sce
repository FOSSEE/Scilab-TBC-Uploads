//CHAPTER 6 ILLUSRTATION 7 PAGE NO 181
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
pi=3.141
m=200//      mass of the flywheel in kg
k=.5//       radius of gyration in m
N1=360//      upper limit of speed in rpm
N2=240//       lower limit of speed in rpm
//==========
I=m*k^2//        mass moment of inertia in kg m^2
w1=2*pi*N1/60
w2=2*pi*N2/60
E=1/2*I*(w1^2-w2^2)//    fluctuation of energy in Nm
Pmin=E/(4*1000)//       power in kw
Eex=Pmin*12*1000//  Energy expended in performing each operation in N-m
printf('Mimimum power required= %.3f kw\n Energy expended in performing each operation= %.3f N-m',Pmin,Eex)
