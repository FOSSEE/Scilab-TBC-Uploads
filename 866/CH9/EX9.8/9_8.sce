clc
//initialisation of variables
M= 1500 //Nm
x1= 40 //mm
x2= 80 //mm
x3= 8 //mm
y1= 8 //mm
y2= 80 //mm
//CALCULATIONS
Ycentroid= (((x1+x2)*y1*y1/2)+(y2*x3*((y2/2)+y1)))/((x1+x2)*y1+y2*x3)
Zcentroid= (((y2*x3*y1/2)+((x1+x2)*x3*((y2/2)+y1)/2))/((x1+x2)*y1+y2*x3))
Iz= (((x1+x2)*(y1)^3)/12)+(x1+x2)*y1*((Ycentroid-(y1/2))^2)+(x3/12)*(y2^3)+y2*x3*((y2/2)-(Ycentroid-y1))^2
Iy= (y1*(((x1+x2)^3)/12))+(x1+x2)*y1*(y1^2)+((x3^3)/12)*(y2)+y2*x3*((Zcentroid-(x3/2))^2)
Izy= (x1+x2)*y1*(-y1)*(Ycentroid-(y1/2))+y2*x3*(Zcentroid-(x3/2))*(-(y2/2)+(Ycentroid-y1))
sigmax= ((-M*10^3*Izy*x3)+(-M*10^3*Iy*(y2-Ycentroid+y1)))/((Iz*Iy)-(Izy)^2)
//RESULTS
printf ('Maximum direct stress= %.2f N/mm^2',sigmax)



