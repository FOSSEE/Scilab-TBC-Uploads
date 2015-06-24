//Initilization of variables
F=[5;2;3;1.5] //kN Forces are defined as a cloumn matrix
theta=[90;60;45;80] //degrees angles are also defined as a column matrix
d=[2;6;13;17] //distances from point C of each force
c=[17;15;11;4] //distance form point D of each force
//Calculations
//Summing horizontal forces
Ch=-F(3,1)*cosd(theta(3,1))+F(2,1)*cosd(theta(2,1))+F(4,1)*cosd(theta(4,1)) //kN "which indidcates that Ch acts to the left instead of the assumed"
//Taking moment about point C
D=(F(1,1)*d(1,1)+F(2.1)*sind(theta(2,1))*d(2,1)+F(3,1)*sind(theta(3,1))*d(3,1)+F(4,1)*sind(theta(4,1))*d(4,1))/d(4,1) //kN
//Taking moment about point D
Cv=(F(1,1)*c(2,1)+F(2,1)*sind(theta(2,1))*c(3,1)+F(3,1)*sind(theta(3,1))*c(4,1))/c(1,1) //kN
//Result
clc
printf('The values of Ch,D and Cv are %f kN,%f kN and %f kN respectively',Ch,D,Cv)
