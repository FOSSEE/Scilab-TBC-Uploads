//Fluid Systems- By Shiv Kumar
//Chapter 7- Performance of Water Turbine
//Example 7.10
// To Calculate Speed and Power Developed by the Prototype when working Under a Head of 8 m.
   clc
   clear

//Given:-
      Lr=1/5;        //Scale Ratio
      DmbyDp=Lr;

     //For Prototype
            Hp=8;     //Head, m
    
      //For Model
          Pm=5;        //Power, kW
          Hm=2;       //Head, m
          Nm=600;   //rpm

//Computations
    Np=Nm*DmbyDp*(Hp/Hm)^(1/2);        //rpm
    Pp=Pm*(Np/Nm)^3/(DmbyDp^5);        //KW


//Results
    printf("For the Prototype (Working Under a Head of 8 m:\n")
    printf("      Speed, Np=%.f rpm\n      Power Developed, Pp=%.f kW",Np,Pp)


