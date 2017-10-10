//Strength Of Material By G.H.Ryder
//Chapter 1
//Example 5
// To Calulate  the maximum laod which can be carried
 m1=100; //mass of cage , Unit in Kg
 m2=0.9;  //mass of rope, Unit in Kg/m
 l2=25;  //lenght of ropewire, Unit in m
 n=49; //No. of wires
 D2=1.6; //Diameter of each wire, Unit in mm
 StressAll=90;// Max allowable stress, Unit in N/mm^2
 E=70,000;// Young's Modulus for rope, unit in N/mm^2
 h=10;  //height from which lift is dropped , Unit in cm
 AreaOfRope=%pi*n*(D2^2)/4;  //Unit in mm^2
 g=9.8;   //Acceleration due to Gravity, Unit in m/sec^2
 StressInitial=(m1+m2*l2)/AreaOfRope;  //Initial stress unit in N/mm^2
 StressImpact=StressAll-StressInitial; // Increase stress due to Impact, Unit in N/mm^2
 P=StressImpact*AreaOfRope/g;  //Equivalent static load,Unit in Kg
 x=StressImpact*l2*100/E  //Entension, Unit in cm
 W=P*x/(2*(h+x))   //max load that can be dropped, Unit in Kg
 printf("The maximum load which can be carried is %f Kg",W)
 
