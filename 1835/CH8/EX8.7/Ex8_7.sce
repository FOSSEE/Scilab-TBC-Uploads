//CHAPTER 8 ILLUSRTATION 7 PAGE NO 229
//TITLE:BALANCING OF ROTATING MASSES

clc
clear
pi=3.141
mA=48//     mass of A in kg
mB=56//       mass of B in kg
mC=20//       mass of C in kg
rA=1.5//       radius of A in cm
rB=1.5//       radius of B in cm
rC=1.25//       radius of C in cm
N=300//   speed in rpm
d=1.8//   distance between bearing in cm
//================================
w=2*pi*N/60//        angular speed in rad/s
BA=164//    angle between pulleys B&A in degrees by measurement
BC=129//    angle between pulleys B&C in degrees by measurement
AC=67//     angle between pulleys A&C in degrees by measurement
C=.88*w^2//    out of balance couple in N
L=C/d//    load on each bearing in N
printf('angle between pulleys B&A=%i degrees\n angle between pulleys B&C= %i degrees\n angle between pulleys A&C= %i degrees\n out of balance couple= %.3f N\n load on each bearing= %.3f N',BA,BC,AC,C,L)
