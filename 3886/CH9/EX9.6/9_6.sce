//Centroid of the gusset plate
//refer fig. 9.15
//The composite area is divided into algebraic sum and differences of simple geometries
//for rectangle
A1=160*280  //mm^2
x1=140  //mm
y1=80  //mm
//for triangle
A2=280*40/2  //mm^2
x2=2*280/3  //mm
y2=160+40/3  //mm
//1st hole
A3=(-%pi*21.5^2)/(4)  //mm^2
x3=70  //mm
y3=50  //mm
//second hole
A4=-363.05  //mm^2
x4=140  //mm
y4=50  //mm
//third hole
A5=-363.05  //mm^2
x5=210  //mm
y5=50  //mm
//fourth hole
A6=-363.05  //mm^2
x6=70  //mm
y6=120  //mm
//fifth hole
A7=-363.05  //mm^2
x7=140  //mm
y7=130  //mm
//sixth hole
A8=-363.05  //mm^2
x8=210  //mm
y8=140  //mm
A=A1+A2+A3+A4+A5+A6+A7+A8  //mm^2
sumAixi=A1*x1+A2*x2+A3*x3+A4*x4+A5*x5+A6*x6+A7*x7+A8*x8  //mm^3
xbar=sumAixi/A  //mm
sumAiyi=A1*y1+A2*y2+A3*y3+A4*y4+A5*y5+A6*y6+A7*y7+A8*y8
ybar=sumAiyi/A  //mm
printf("\xbar=%.3f mm \nybar=%.3f mm",xbar,ybar)


