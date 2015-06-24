//Chapter 25
clc
//Example 4
//given
//interchangeable objectives
f1=2 // focal length in cm
f2=0.2 //focal length in cm
//data of two eye pieces
f3=5 //focal length in cm
f4=2.5 //focal length in cm
L=18 // length of microscope
//Calculation of magnification for four combinations of lens
//magnification of compound microscope  m =-(L/fo)*(25cm/fe) where fo is shortest  focal length compared to fe
//combination of two long focal lengths
m1=-(L/f1)*(25/f3)
disp(m1,"Magnification of microscope with two long focal lengths")
//combination of 20 mm objective  and 2.5 cm eyepiece
m2=-(L/f1)*(25/f4)
disp(m2,"Magnification of microscope with a combination of 20 mm objective  and 2.5 cm eyepiece is ")
//combination of 2 mm objective  and 5 cm eyepiece
m3=-(L/f2)*(25/f3)
disp(m3,"Magnification of microscope with a combination of 20 mm objective  and 2.5 cm eyepiece is ")
//combination of two short focal lengths
m4=-(L/f2)*(25/f4)
disp(m4,"Possible magnification of microscope with two short focal lengths")



