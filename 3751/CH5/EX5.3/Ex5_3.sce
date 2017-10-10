//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.3
//To Find  (a)The Absolute Velocity of Water at Inlet of Runner   (b)The Velocity of Whirl at Inlet    (c) The Relative Velocity at Inlet
        //(d) The Runner Blade Angles    (e)Width of Runner at Outlet   (f)Weight of Water flowing through the Runner per second
        //(g)Head at Inlet of the Turbine   (h)Power developed    (i) Hydraulic Efficiency of the Turbine

     clc
     clear

//Given Data:-
    Do=1;           // External Diameter of Runner, m
    Di=0.5;         //Internal Diameter of Runner, m
    N=200;        //Speed of Turbine, rpm
    bo=225;      //Width of Runner at Inlet, mm


     Vfi=2.15;    //Velocity of flow at Inlet, m/s
   // As Velocity of Flow is constant through the Runner,
        Vfo=Vfi;    //Velocity of flow at Outlet, m/s
        Vo=Vfo;
      alpha_i=11;        //Guide Blades Angle at Inlet, degrees
   //As Discharge at Outlet of the Turbine is Radial,
     alpha_o=90;          //Guide Blades angle at Outlet, degrees
     Vwo=0;
     

//Data Required:-
      rho=1000;       //Density of Water, Kg/m^3
      g=9.81;           //Acceleration due to gravity, m/s^2


//Computations:-
         ui=%pi*Do*N/60;     //m/s
               
    // (a)The Absolute Velocity of Water at Inlet of Runner,
             Vi=Vfi/sind(alpha_i);          //m/s       
                 
    //(b)The Velocity of Whirl at Inlet, 
            Vwi=Vfi/tand(alpha_i);       //m/s

   
    // (c) The Relative Velocity at Inlet,
            Vri=sqrt(Vfi^2+(Vwi-ui)^2);         //m/s

    // (d) The Runner Blade Angles,   beta_i, beta_o
              beta_i=asind(Vfi/Vri);     //Runner Blade Angle at Inlet,  degrees
              uo=%pi*Di*N/60;     //m/s
              beta_o=atand(Vfo/uo);         //Runner Blade Angle at Outlet, degrees
             
     // (e)Width of Runner at Outlet , bi
               bi=Do*bo/Di;        //mm
              
    // (f)Weight of Water flowing through the Runner per second, W
               W=rho*g*%pi*Do*(bo/1000)*Vfi/1000;        //kN/s

    //(g)Head at Inlet of the Turbine, H
              H=Vwi*ui/g+Vo^2/(2*g);     //m

    // (h)Power developed by the Runner,
            Q=%pi*Do*(bo/1000)*Vfi;       //m^3/s           
             P=rho*Q*Vwi*ui/1000;        //kW      
    //(i)Hydraulic Efficiency, eta_H
               eta_H=Vwi*ui*100/(g*H);      //In Percentage

//Results:-
      printf("(a)The Absolute Velocity of Water at Inlet of Runner, Vi=%.3f m/s\n",Vi)        //The Answer Vary due to Round off Error
      printf(" (b)The Velocity of Whirl at Inlet, Vwi=%.2f m/s\n",Vwi)
      printf(" (c) The Relative Velocity at Inlet, Vri=%.2f m/s\n",Vri)
      printf(" (d) The Runner Blade Angles are:- \n      beta_i =%.2f Degrees   and     beta_o =%.2f Degrees\n",beta_i,beta_o)        //The Answer Vary due to Round off Error
      printf(" (e)Width of Runner at Outlet , bi =%.f mm\n",bi)
      printf(" (f)Weight of Water flowing through the Runner per second, W =%.2f kN/s\n",W)        //The Answer Vary due to Round off Error
      printf(" (g)Head at Inlet of the Turbine, H =%.3f m\n",H)        //The Answer Vary due to Round off Error
      printf(" (h)Power developed by the Runner =%.3f kW\n",P)        //The Answer Vary due to Round off Error
      printf(" (i)Hydraulic Efficiency, eta_H =%.2f  Percent\n",eta_H)        //The Answer Vary due to Round off Error


