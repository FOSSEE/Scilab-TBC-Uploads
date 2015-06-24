//Chapter 2, Problem 4
clc
funcprot(0)
R=23                            //resistance in ohm
G=4*10^-3                       //conductance in siemens
L=125*10^-6                     //inductance in henry
C=48*10^-9                      //capacitance in farad

//list of frequencies in hertz
f1=100
f2=500
f3=15e3
f4=5e6
f5=10e6

deff('[a]=imp(R,G,L,C,f)','a=sqrt((R+(%i*2*%pi*f*L))/(G+(%i*2*%pi*f*C)))');
deff('[b]=imp1(d)','b={(real(d)^2)+(imag(d)^2)}^0.5');
deff('[c]=imp2(e)','c=atan(imag(e),real(e))');
[Z01]=imp(R,G,L,C,f1)
[Z_mag1]=imp1(Z01)
[Z_ang1]=imp2(Z01)
[Z02]=imp(R,G,L,C,f2)
[Z_mag2]=imp1(Z02)
[Z_ang2]=imp2(Z02)
[Z03]=imp(R,G,L,C,f3)
[Z_mag3]=imp1(Z03)
[Z_ang3]=imp2(Z03)
[Z04]=imp(R,G,L,C,f4)
[Z_mag4]=imp1(Z04)
[Z_ang4]=imp2(Z04)
[Z05]=imp(R,G,L,C,f5)
[Z_mag5]=imp1(Z05)
[Z_ang5]=imp2(Z05)

printf("Characteristic impedance Z0 for a given frequency is,\n\n")
printf("(a) for 100 Hz, \nZ0(magnitude) = %.2f ohm\n Z0(angle) = %f rad\n\n",Z_mag1,Z_ang1)
printf("(b) for 500 Hz, \n Z0(magnitude) = %.2f ohm\n Z0(angle) = %f rad\n\n",Z_mag2,Z_ang2)
printf("(c) for 15 KHz, \n Z0(magnitude) = %.2f ohm\n Z0(angle) = %f rad\n\n",Z_mag3,Z_ang3)
printf("(d) for 5 MHz, \nZ0(magnitude) = %.2f ohm\n Z0(angle) = %f rad\n\n",Z_mag4,Z_ang4)
printf("(e) for 10 MHz, \n Z0(magnitude) = %.2f ohm\n Z0(angle) = %f rad\n\n",Z_mag5,Z_ang5)
