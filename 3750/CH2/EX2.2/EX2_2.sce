//Strength Of Material By G.H.Ryder
//Chapter 2
//Example 2
//To Find the dimensions so that the strength shall be same against all type of failure

clc();

//Initialization of Variables
d=5;  //diameter of rod , Unit in cm
f=1.25;  //thickness of cotter , Unit in cm
StressTension=300; //Permissible stress in tension, Unit in cm
StressShearMember=150;  //Permisible shear stress in members, Unit in N/mm^2
StressShearCotter=225; //Permissible shear cotter in members, Unit in N/mm^2
StressCrushing=450; //Permissible Crushing stress in members, Unit in N/mm^2


//Calculations
//(1) Load (P)
P=StressTension*(%pi)*(d*10)^2/4;  //load, Unit in N
//(2) Shear fo cotton:StressShearCotter=P/(2*e*f*10)
e=P/(2*f*10*StressShearCotter); // Cotter , Unit in mm,   The answer vary due to round off error
//(3)Shear of right-handed member
//ShearStressMember=P/(4*a*b)
aMultiplyb=P/(4*StressShearMember);  // Unit in mm^2
//(4)Shear of left-handed member
//ShearStressMember=P/(2*c*h)
cMultiplyh=P/(2*StressShearMember)  //Unit in mm^2
//(5) Crusing between right hand member and cotter
//StressCrushing=P/(2*a*f*10)
a=P/(2*f*10*StressCrushing);   //Unit in mm,     The answer vary due to round off error
b=aMultiplyb/a;  //from (3), Unit in mm,     The answer vary due to round off error
//(6)Crushing between left hand member and cotter
//StressCrusing=P/(f*10*h)
h=P/(f*10*StressCrushing);   //Unit in mm,   The answer vary due to round off error
c=cMultiplyh/h;   //from (4), Unit in mm,   The answer vary due to round off error

//Results
printf("Given: d=%.0fmm, f=%.2fmm\n",d,f)
printf("The other dimension required are:\n\t")
printf(" a=%.1f mm\n\t b=%.1f mm \n\t c=%.1f mm \n\t h=%.1f mm \n\t e=%.0f mm \n\t",a,b,c,h,e)      //The answer vary due to round off error
