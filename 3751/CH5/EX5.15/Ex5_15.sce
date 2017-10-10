//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.15
     clc
     clear

//Given Data:-
            Vo=4.5;      //Velocity of water at Tube Entrance,  m/s
            D1=0.4;     //Diameter of Tube at Upper End, m
            D2=0.65;    //Diameter of Tube at Lower End, m
            l=4.8;      //Length of Tube, m
            h_f=0.14;       //Head Losses due to Friction, m
            h=1;         //Length of Tube immersed in Tail-race, m

//Data Required:-
          pa=1.013e5;     //Air(Atmospheric) Pressure, Pa
          rho=1000;       //Density of Water, Kg/m^3
          g=9.81;        //Acceleration due to gravity, m/s^2
          
//Calculations:-
            A1=(%pi/4)*D1^2;     //Cross-sectional Area at Upper End, m^2
            A2=(%pi/4)*D2^2;     //Cross-sectional Area at Lower End, m^2
        //Using Continuity Equation,
            Vd=A1*Vo/A2;        //Velocity of Water at Outlet, m/s
           
       //(a)  Using Bernoulli's Equation,
           p1_by_rho_g=pa/(rho*g)+h+(Vd^2-Vo^2)/(2*g)-l+h_f;     //Absolute Pressure Head at Inlet, m
           
           //For Vaccum Pressure Head, 
             pa_by_rho_g=0;        
             p1_by_rho_g_v=pa_by_rho_g+h+(Vd^2-Vo^2)/(2*g)-l+h_f;     //Vaccum Pressure Head at Inlet, m     

     //(b)Efficiency of Draft Tube:
            eta_d=(Vo^2-Vd^2-2*h_f*g)*100/Vo^2;      //In Percentage

//Results:-
     printf("(a)The Pressure Head at Tube Entrance is\n\t")
     printf(" p1/(rho*g)=%.3f m (Absolute)\n\t p1/(rho*g)=%.3f m (Vaccum)\n ",p1_by_rho_g, p1_by_rho_g_v)        //The Answer Vary due to Round off Error
     printf("(b)Efficiency of Draft Tube, eta_d=%.2f Percent\n",eta_d)        //The Answer Vary due to Round off Error



