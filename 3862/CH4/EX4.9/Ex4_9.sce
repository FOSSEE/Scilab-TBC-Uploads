clear
//The composite area is equal to a rectangle of size 160 × 280 mm plus a triangle of size 280 mm base width and 40 mm height and minus areas of six holes. In this case also the can be used for locating centroid by treating area of holes as negative. The area of simple figures and their centroids are

//

//variable declaration

Ar=160.0*280.0                  //Area of rectangle,mm^2
At=280.0*40.0/2.0                          //Area of triangle,mm^2
d=21.5                              //diameter of hole,mm  
Ah=-%pi*(d**2)/4                   //Area of hole**mm^2

A=Ar+At+Ah*6


Xr=140.0
Xt=560/3.0
Xh1=70.0
Xh2=140.0
Xh3=210.0
Xh4=70.0
Xh5=140.0
Xh6=210.0

Yr=80.0
Yt=160.0+40.0/3.0
Yh1=50.0
Yh2=50.0
Yh3=50.0
Yh4=120.0
Yh5=130.0
Yh6=140.0

xc=(Ar*Xr+At*Xt+Ah*(Xh1+Xh2+Xh3+Xh4+Xh5+Xh6))/A

printf("\n xc= %0.2f  m",xc)


yc=(Ar*Yr+At*Yt+Ah*(Yh1+Yh2+Yh3+Yh4+Yh5+Yh6))/A

printf("\n yc= %0.2f  m",yc)
