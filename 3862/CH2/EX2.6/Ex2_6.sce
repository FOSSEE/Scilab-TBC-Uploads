clear
//
R=1000.0   //Resultant force
F1=500.0    //Force
F2=1000.0   //force
o=45.0*3.14/180.0              //angle resultant makes with  x axis
o1=30.0*3.14/180.0             //angle  F1 makes with  x axis
o2=60.0*3.14/180.0              //angle  F2 makes with  x axis
//F3coso3=Rcoso-F1coso1-F2sino2
//F3sino=Rsino-F1sino1-F2coso2
F3=((R*cos(o)-F1*cos(o1)-F2*cos(o2))**2+(R*sin(o)-F1*sin(o1)-F2*sin(o2))**2)**0.5
printf("\n Force %0.3f  N",F3)
o3=180/3.14*atan((R*sin(o)-F1*sin(o1)-F2*sin(o2))/(R*cos(o)-F1*cos(o1)-F2*cos(o2)))
printf("\n At an angle %0.3f degrees",o3)
