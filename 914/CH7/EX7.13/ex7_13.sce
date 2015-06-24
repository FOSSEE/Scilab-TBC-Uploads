clc;
warning("off");
printf("\n\n example7.13 - pg303");
// given
deltaz=30;  //[ft] - distance between process and the holding tank
Q=100;  //[gpm] - volumetric flow rate of water
p1=100;  //[psig]
p2=0;  //[psig]
g=32.1;  //[ft/sec] - acceleration due to gravity
sv=0.0161;  //[ft^3/lb] - specific volume of water
p=1/sv;  //[lb/ft^3] - density of water
e=0.77;  // efficiency of centrifugal pump
deltap=(p1-p2)*(144);  //[lbf/ft^2]
gc=32.174;
// using the equation deltap/p+g*(deltaz)+Ws=0;
Wst=-deltap/p-(g/gc)*(deltaz);
// using the formula for efficiency e=Ws(theoritical)/Ws(actual)
// therefore
Wsa=Wst/e;
// the calulated shaft work is for a unit mass flow rate of water,therfore for given flow rate multiply it by the flow rate
w=(Q*p)/(7.48*60);
Wsactual=Wsa*w;
power=-Wsactual/(778*0.7070);
printf("\n\n the required horsepower is %fhp",power);
