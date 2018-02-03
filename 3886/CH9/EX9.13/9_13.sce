//Polar moment of inertia
//Refer fig.9.38
//section can be divided into three triangles
A1=80*12  //mm^2
A2=(150-22)*12  //mm^2
A3=120*10  //mm^2
A=A1+A2+A3  //mm^2
Ixx=((80*12^3)/12)+(960*74.22^2)+((12*128^3)/12)+(1536*4.22^2)+((120*10^3)/12)+(1200*64.78^2)  //mm^4
Iyy=((12*80^3)/12)+((128*12^3)/12)+((10*120^3)/12)  //mm^4
//Polar moment of Inertia (Izz)
Izz=Ixx+Iyy  //mm^4
kxx=sqrt(Ixx/A)  //mm
Kyy=sqrt(Iyy/A)  //mm  The answer provided in the textbook is wrong
printf("\nIzz=%.2d mm^4\nkxx=%.2f mm\nkyy=%.2f mm",Izz,kxx,kyy)





