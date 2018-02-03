//Determine moment of inertia
//refer fig.9.34
//composite section can be divided into simple ones
A1=150*10  //mm^2
A2=140*10  //mm^2
A=A1+A2  //mm^2
//due to symmetry centroid lies on y-axis
ybar=(1500*5+1400*(10+70))/(2900)  //mm
Ixx=((150/12)*10^3)+(1500*36.21^2)+((10/12)*140^3)+(1400*38.79^2)  //mm^4
Iyy=((10*150^3)/(12))+((140*10^3)/(12))  //mm^4
kxx=sqrt(Ixx/A)  //mm
kyy=sqrt(Iyy/A)  //mm
printf("\nIxx=%.2f mm^4\nIyy=%.2f mm^4\nkxx=%.2f mm\nkyy=%.2f mm",Ixx,Iyy,kxx,kyy)
