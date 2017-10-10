//Fluid Systems - By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.6
//To Find   (a) Guide Blade Angles    (b) Blade Angle at Inlet    (c) Power Developed

      clc
      clear

//Given Data:-
           Q=300;     //Discharge, litres/s
           Di=0.36;    //Diameter of Runner at Outlet, m
           Dp=Di;       //Diameter of Outlet Pipe,  m
           H=36;        //Head,  m
           ui=21;       // Velocity of Wheel at Inlet, m/s

//Data Required:-
       rho=1000;     //Density of water, Kg/m^3
       g=9.81;          //Acceleration due to gravity, m/s^2

//Computations:-
       Vfo=(Q/1000)/((%pi/4)*Di^2);      //m/s
       Vo=Vfo;       
       Vfi=Vfo;
    //By Energy Balance Equation,
        Vwi=(g*H-Vo^2/2)/ui;       //m/s
         
    // (a) Guide Blade Angles,     alpha_i, alpha_o
           alpha_i=atand(Vfi/Vwi);     //degrees
       //As Discharge is Radial,
            alpha_o=90;         //degrees

    // (b) Blade Angle at Inlet, beta_i
            beta_i=180-atand(Vfi/(ui-Vwi));       //degrees

   // (c) Power Developed by Runner
            P=rho*(Q/1000)*Vwi*ui/1000;        //kW

//Results:-
      printf(" (a) Guide Blade Angles are: \n        alpha_i=%.2f Degrees,     alpha_o=%.f Degrees\n",alpha_i, alpha_o )
      printf(" (b) Blade Angle at Inlet, beta_i=%.2f Degrees\n",beta_i)
      printf(" (c) Power Developed by Runner, P =%.2f kW\n",P)        //The Answer Vary due to Round off Error
 

