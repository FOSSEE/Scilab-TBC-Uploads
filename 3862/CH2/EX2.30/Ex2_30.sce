clear
//

// Two cylinders, A of weight 4000 N and B of weight 2000 N rest on smooth inclines. They are connected by a bar of negligible weight hinged to each cylinder at its geometric centre by smooth pins

//variable declaration

WA=4000.0              //weight of cylinder A,N
WB=2000.0              //weight of cylinder B,N

thetaWA=60.0*%pi/180.0  //inclination of wall with cylinderA,°
thetaWB=45.0*%pi/180.0  //inclination of wall with cylinderB,°
thetaAb=15.0*%pi/180.0  //angle inclination bar with cylinder A ,N
thetaBb=15.0*%pi/180.0  //angle inclination bar with cylinder B ,N

//he free body diagram of the two cylinders. Applying Lami’s theorem to the system of forces on cylinder A, we get

C=WA*sin(thetaWA)/sin(thetaWA+(%pi/2)-thetaAb)

//Consider cylinder B. Summation of the forces parallel to the inclined plane 
P=(-WB*cos(thetaWB)+C*cos(thetaWA))/cos(thetaBb)
printf("\n P= %0.1f  N",P)
