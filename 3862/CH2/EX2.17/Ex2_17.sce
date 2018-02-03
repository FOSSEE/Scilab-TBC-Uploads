clear
//

//variable declaration
P1=5.0          //Inclined at 45° down Loading at 3m distance from A,KN
P2=10.0        //Inclined at 45° down Loading at 2m distance from A,KN
P3=10.0        //Inclined at 45° down Loading at 1m distance from A,KN
P4=5.0         //Inclined at 45° down Loading  A,KN
P8=5.0          //Inclined at 45° UP Loading at 3m distance from A,KN
P7=10.0        //Inclined at 45° UP Loading at 2m distance from A,KN
P6=10.0        //Inclined at 45° UP Loading at 1m distance from A,KN
P5=5.0         //Inclined at 45° UP Loading  A,KN
a=1.0

theta=45.0*%pi/180.0
//The roof is inclined at 45° to horizontal and loads are at 90° to the roof. Hence, the loads are also inclined at 45° to vertical/horizontal. 

//assume Resulat R at distance d from A,
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
Rx=(P1+P2+P3+P4+P5+P6+P7+P8)*cos(theta)
Ry=-(P1+P2+P3+P4)*sin(theta)+(P5+P6+P7+P8)*sin(theta)

printf("\n R= %0.3f  KN",Rx)
//and its direction is horizontal 
//Let R be at a distance d from the ridge A
//moment at A
d=((P1*3*cos(theta)*a+P2*cos(theta)*2*a+P3*cos(theta)*a)*2)/(Rx)

printf("\n d= %0.1f m \n Resultant is a horizontal force of magnitude %0.3f  at %0.1f  m below A.",d,Rx,d)
