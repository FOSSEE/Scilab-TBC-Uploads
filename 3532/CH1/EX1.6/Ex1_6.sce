clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 1.6.1\n')
//given data
//case 1
//a complex number is represented as Z=X+j*Y where j is imaginary
//V=3 +j*7
x1=3
y1=7
//calculations
r1=sqrt(x1^2+y1^2)
    if (y1/x1)>0 then theta1=atan(y1/x1)
    else theta1=%pi-atan(abs(y1/x1))
    end
theta1=atan(y1/x1)
//case 2
//V=-5 +j*4
x2=-5
y2=4
//calculations
r2=sqrt(x2^2+y2^2)
 if (y2/x2)>0 then theta1=atan(y2/x2)
    else theta2=%pi-atan(abs(y2/x2))
    end
//output
mprintf('case(i) V=3+j*7 is represented as V=%3.3f*e^(j*(%3.3f))\ncase(ii) V=-5+j*4 is represented as V=%3.3f*e^(j*(%3.3f))',r1,theta1,r2,theta2)
