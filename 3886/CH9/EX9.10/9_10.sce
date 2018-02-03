//Moment of inertia of L-section
//Divide the section into two rectangles A1 and A2
A1=125*10  //mm^2
A2=75*10  //mm^2
A=A1+A2  //mm^2
xbar=((1250*5)+750*(10+75/2))/A  //mm
ybar=((1250*125/2)+(750*5))/A  //mm
Ixx=((10*125^3)/12)+(1250*21.56^2)+((75/12)*10^3)+(750*39.94^2)  //mm^4
Iyy=((125*10^3)/12)+(1250*15.94^2)+((10*75^3)/12)+(750*26.56^2)  //mm^4
Izz=Ixx+Iyy  //mm^4
printf("\nIxx=%.2f mm^4\nIyy=%.2f mm^4\nIzz=%.2f mm^4",Ixx,Iyy,Izz)


