//Strength Of Material By G.H.Ryder
//Chapter 1
//Example 11
// To Calculate thermal Stress in rod & tube
SteelOD=2.4;  //External diameter of steel tube, Unit in cm
SteelID=1.8;   //Internal diameter of steel tube, Unit in cm
CopperDia=1.5;  //Diameter of copper rod, unit in mm
Es=210,000;  //Young's Modulus for steel , Unit in N/mm^2
Ec=100,00;  //Young's Modulus for copper , Unit in N/mm^2
alphaS=11e-6;  //co-efficient of linear expansion for steel, Unit in perdegreeC
alphaC=18e-6;  //co-efficient of linear expansion for copper, Unit in perdegreeC
AreaSteel=%pi*(SteelOD^2-SteelID^2)/4;   //cross section Area  of steel tube, Unit in cm^2
AreaCopper=%pi*CopperDia^2/4;   //cross section Area  of copper bar, Unit in cm^2

//Equillibrium Equation : SigmaC*AreaCopper=SigmaS*AreaSteel
Ti=10; //Initial Temperature, Unit in perdegreeC
Tf=200;//Final Temperature, Unit in perdegreeC
//Compatibility Equation:
               //alphaC*(Tf-Ti)-SigmaC/Ec=alphaS*(Tf-Ti)-SigmaS/Es
SigmaS=(alphaS+alphaC)*(Tf-Ti)/((1/Es)*AreaSteel/(AreaCopper*Ec));
//Stress in steel, Expression from compatability & Equillibrium Equation, Unit in N/mm^2

SigmaC=AreaSteel*SigmaS/AreaCopper;
printf("Stress in Copper rod= %f N/mm^2\n",SigmaC)
printf("Stress in Steel Tube= %f N/mm^2\n",SigmaS)



