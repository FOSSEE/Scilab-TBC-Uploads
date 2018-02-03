//Locate centroid
//refer fig.9.17
x=40  //mm
A1=168*x^2
A2=12*x^2
A3=-16*x^2
A4=-8*%pi*x^2
A5=-4*%pi*x^2
x1=7*x
x2=16*x
x3=2*x
x4=6*x
x5=12.3023*x
y1=6*x
y2=4*x/3
y3=10*x
y4=(16*x/(3*%pi))
y5=10.3023*x
A=126.3009*x^2
sumAixi=1030.6083*x^3
sumAiyi=691.8708*x^3
xbar=1030.6083*x/126.3009  //mm
ybar=691.8708*x/126.3009  //mm
printf("centroid is at (%.2f, %.2f)",xbar,ybar)

