//Fluid Systems - By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.9
//To Find   (i) Guide Blade Angle at Inlet    (ii) The Wheel Vane Angle at Inlet    (iii) Diameter of Wheel at inlet        (iv)Width of Wheel at Inlet

      clc
      clear

//Given Data:-
      //Data Required
       rho=1000;     //Density of water, Kg/m^3
       g=9.81;          //Acceleration due to gravity, m/s^2

           eta_o=76/100;       //Overall Efficiency
           P=150;         //Power Produced, kW
           H=8;        // Working Head, m
           ui=0.25*sqrt(2*g*H);       //Peripheral Velocity at Inlet, m/s
           Vfi=0.95*sqrt(2*g*H);       //Velocity of Flow at Inlet, m/s
           N=150;          //Speed, rpm
           H_loss=20;       //Percentage of Hydraulic Losses in the Turbine (of Available Energy)
    //As Discharge is Radial,
            alpha_o=90;   //Degrees          //Vfo=Vo
            Vwo=0;

//Computations:-
        Do=ui*60/(%pi*N);      //m
        Q=P*1000/(rho*g*H*eta_o);       //m^3/s
        bo=Q/(%pi*Do*Vfi);    //m   

    //By Energy Balance Equation,
        Vwi=(g*H-(H_loss/100)*g*H)/ui;       //m/s
         
            alpha_i=atand(Vfi/Vwi);     //degrees
            beta_i=atand(Vfi/(Vwi-ui));       //degrees


//Results:-
      printf(" (i) Guide Blade Angle at Inlet, alpha_i=%.2f Degrees\n",alpha_i)         //The Answer Vary due to Round off Error
      printf(" (ii) The Wheel Vane Angle at Inlet, beta_i =%.2f Degrees\n", beta_i )         //The Answer Vary due to Round off Error
      printf(" (iii) Diameter of Wheel at Inlet, Do =%.4f m\n",Do)         //The Answer Vary due to Round off Error
      printf(" (iv)Width of Wheel at Inlet , bo =%.4f m\n",bo)

