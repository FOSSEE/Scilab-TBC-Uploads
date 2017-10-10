//Strength Of Material By G.H.Ryder
//Chapter 2
//Example 3
//To find loads fo designing double cover butt joint and to find its efficiency
clc();

//Initialization of Variables
P=25000;   //Load , Unit in Kg
b=20.5;   // width of each plate to be joined, Unit in cm
t=1.25;    //Thickness of each plate to be joined, Unit in cm
d=1.9;    // Diameter of rivets , Unit in cm
Tau=75;    // Permissible Shear Stress, Unit in N/mm^2
SigmaC=180;// Permissible bearing pressure, Unit in N/mm^2
Sigma=105; //Permissible tensile stress, Unit in N/mm^2
g=9.81;   //acceleration due to gravity, Uint in m/sec^2

//Calculations
t1=5*t/8;   //Thickness of cover plate, unit in cm
ShearLoadRivet=Tau*2*(%pi)*(d*10)^2/(4*g);// Load to shear one Rivet, Unit in Kg
CrushLoadRivet=SigmaC*d*10*t*10/g;   // Load to crush one rivet, unit in Kg
n=P/ShearLoadRivet;  // Number of rivets required
n=ceil(n);  //Rounding off Number of rivets to next whole number
Load=Sigma*b*10*t*10/g;  // Load which can be carried by solid plate, Uint in Kg

//(i)
 ShearLoadAll=n*ShearLoadRivet;  //Load to shear all the rivets, Unit in Kg,    The answer provided in the textbook is wrong
 //(ii)
 CrushLoadAll=n*CrushLoadRivet;   //Load to crush all the rivets, Unit in kg  ,            The answer provided in the textbook is wrong
 //(iii)
 Load1=Sigma*(b*10-d*10)*t*10/g;   //permissible load for plate to tear through section AA, Unit in Kg,      The answer provided in the textbook is wrong
 //(iv)
 Load2=Sigma*(b*10-2*d*10)*t*10/g+ShearLoadRivet;  //permissible load for plate to tear through section BB, At the same time shearing rivets at AA, Unit in Kg,     The answer provided in the textbook is wrong
 
//(v)
Load3=Sigma*(b*10-3*d*10)*t*10/g+3*ShearLoadRivet;// permissible load for plate to tear through section CC, At the same time shearing three rivets at AA and BB,  Unit in Kg,              The answer provided in the textbook is wrong
//(vi)
Load4=Sigma*(b*10-3*d*10)*2*t1*10/g;  //permissible load for plate to tear through section CC, unit in Kg,      The answer provided in the textbook is wrong

Eff=P*100/Load;// Efficiency of joint in percentage,      The Answer vary due to round off error


//Results
printf("For the design of Double Cover butt Joint:\n\t") 
printf("Load to shear one Rivet=%.fKg\n\t",ShearLoadRivet)       //The answer provided in the textbook is wrong
printf("Load to crush one rivet=%.fKg\n\t",CrushLoadRivet)       //The answer provided in the textbook is wrong
printf("Load to shear all the rivets=%.fKg\n\t",ShearLoadAll)      //The answer provided in the textbook is wrong
printf("Load to crush all the rivets=%.fKg\n\t",CrushLoadAll)     //The answer provided in the textbook is wrong
printf("permissible load for plate to tear through section AA=%.fKg\n\t",Load1)     //The answer provided in the textbook is wrong
printf("permissible load for plate to tear through section BB, At the same time shearing rivets at AA=%.fKg\n\t",Load2)     //The answer provided in the textbook is wrong
printf("permissible load for plate to tear through section CC, At the same time shearing three rivets at AA and BB=%.fKg\n\t",Load3)   //The answer provided in the textbook is wrong
printf("permissible load for plate to tear through section CC=%.fKg\n",Load4)   //The answer provided in the textbook is wrong
printf("Efficiency  Of Joint=%.1fpercent",Eff)//The Answer vary due to round off error
 
