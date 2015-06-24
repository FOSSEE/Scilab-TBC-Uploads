
//Variable Declaration

v=204.81   //True anomaly(degrees) from Example 2.14
r=7257     //Magnitude of radius vector(km) from Example 2.14

//Calculation

rP=r*cos(v*%pi/180)  //P coordinate of radius vector(km)
rQ=r*sin(v*%pi/180)  //Q coordinate of radius vector(km)

//Result
printf("r in the perifocal coordinate system is %.2f Pkm %.2f Qkm",rP,rQ)
