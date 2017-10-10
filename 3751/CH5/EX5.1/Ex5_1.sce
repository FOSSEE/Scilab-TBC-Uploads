//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.1
//To Find  (a)Discharge passing through the Runner  and  (b) Width of Runner at Outlet

     clc
     clear

//Given Data:-
    Do=0.8;        //External Diameter of the Runner, m
    Di=0.4;         //Internal Diameter of the Runner, m
    Vfi=1.4;       //Velocity of Flow at Inlet, m/s
    Vfo=Vfi;      //Velocity of Flow at Outlet, m/s
    bo=210;     //Width of Runner at Inlet, mm

//Computations:-
        Q=%pi*Do*(bo/1000)*Vfi;          //Discharge passing through the Runner, m^3/s
        bi=Do*bo/Di;         //Width of Runner at Outlet, mm

//Results
  printf("(a)Discharge passing through the Runner, Q=%.4f m^3/s\n",Q)       //The Answer Vary due to  Round off Error
  printf("(b)Width of Runner at Outlet, bi=%.f mm",bi)

