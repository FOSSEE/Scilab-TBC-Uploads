clc

t=1.25 //mm
y=15.87 //mm
z=5.28 //mm
Iy=4765.62 //mm^4
Iz=21054.69 //mm^4
Iyz=3984.37 //mm^4
thetap=13.05 //degree
Iy1=3828.12 //mm^4
Iz1=21953.12//mm^4
s=12.5

//tau=(Vy/Iz1*t)*s*t(19.55+s*asind(13.05)/2)....equation 1
//F1=integrate((tau*t)ds)
x=integrate('(0)','s',0,1)
//F1=0.0912*Vy1                   substituting the value of tau we get F1
//Vy1*ez1=37.5*F1                 substituting the value of F1 we get ez1
ez1=37.5*0.0912
disp(ez1,"the distance in mm is= ")

//tau=(Vz1/Iy1*t)*s*t(12.05-s*asind(13.05)/2)....equation 2
//F1=integrate((tau*t)ds)
x=integrate('(0)','s',0,1)
//F1=0.204*Vz1                   substituting the value of tau we get F1
//Vz1*ey1=37.5*F1                 substituting the value of F1 we get ez1
ey1=37.5*0.204
disp(ey1,"the distance in mm is= ")

