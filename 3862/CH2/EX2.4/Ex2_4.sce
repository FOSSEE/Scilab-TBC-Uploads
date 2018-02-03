clear
//
//R             resultant force
//Rx            resultant horizontal component
//Ry            resultant vertical component
//f1             force
//f2             force
//f3             force
//o1             angle with the line
//o2             angle with the line
//o3             angle with the line
//O              angle of resultant force with line
f1=70.0
f2=80.0
f3=50.0
o1=50.0
o2=25.0
o3=-45.0
Rx=(f1*cos(o1/180*3.14)+f2*cos(o2/180*3.14)+f3*cos(o3/180*3.14))
Ry=(f1*sin(o1/180*3.14)+f2*sin(o2/180*3.14)+f3*sin(o3/180*3.14))
R=sqrt(Rx**2+Ry**2)
O=atand(Ry/Rx)
printf("\n %s %.2f %s" ,"\n \n  Resultant Force = %0.3f ",R,"N")
printf("\n %s %.2f %s" ,"\n \n  Resultant angle = %0.3f ",O,"degrees")
