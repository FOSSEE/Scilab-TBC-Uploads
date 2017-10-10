//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.14
//To Find  the Pressure Head at the Entrance.

     clc
     clear

//Given Data:-
          Vo=5.6;         //Velocity at Inlet, m/s
          Vd=1.4;        //Velocity at Outlet, m/s
          h_f=0.12;     //Friction Losses, m
          Ho=5.2;        //Vertical Height betwen tail-race and entrance of Draft-tube,  m
 
//Data Required:-
    g=9.81;    //Acceleration due to gravity,  m/s^2
 
//Calculations:-
        //Applying Bernoulli's Equation with,
             Z2=0;
             pa_by_rho_g=0;
             p1_by_rho_g=pa_by_rho_g+(Vd^2-Vo^2)/(2*g)+Z2-Ho+h_f;       //m

//Results:-
             printf("The Pressure Head at Entrance, p1/(rho*g)=%.3f m\n",p1_by_rho_g)


