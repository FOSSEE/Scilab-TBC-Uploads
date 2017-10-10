//Strength Of Material By G.H.Ryder
//Chapter 1
//Example 12
// To Find New Tension in bolts
SideB=20;  //side of square liquid , Unit in cm
Pc=5;   //central load, Unit in KN
n=4;   //Numbers of bolts
SideF=16;  //side of square holding foundation
Pb=0.5;   //tension in bolt, Unit in KN
shift=2;   //shift in line of  action of load, Unit i cm
InitialLoad=Pc+n*Pb;   //Initial load on ??????? , Unit in KN
//This load is distributed over 20cm causing compression of x
RateOfLoading=(5*8)*(xbye/2)*(7/20); Unit in KN/cm;
F=RateOfLoading*SideB/2;   //Total force in ?????? in oneside, Unit in KN
C=2/3*SideB/2;    //Distance of centroid from centre line , Unit in cm
//Moment Equation:   2*xbye*SSideB/2+2*F*C=Pc*2
xbye=Pc*2/(2*SideF/2+2*F*C)    //Unit in KN
