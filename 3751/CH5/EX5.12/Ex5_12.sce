//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.12
     clc
     clear

//Given Data:-
            Dp=5;        //Diameter at Penstock, m
            P=61000;     //Output Power, kW
            Q=110;       //Discharge, m^3/s
            N=160;      //Speed, rpm
            eta_H=94/100;          //Hydraulic Efficiency
            Do=4;           //Diameter of Runner at Inlet, m
            bo=1;           //Width of Runner at Inlet, m
            Ddi=4.2;      //Entry Diameter to Draft Tube, m
            V2=2.2;       //Velocity in Tail Race, m/s
            p_by_rho_g=58;     //Static Pressure Head (p/(rho*g)) , m
            Z=2.8;     //Level of Measurement above Tail Race, m
            loss=25;      //Percentage of loss in Draft Tube (of Velocity Head at its Entry)
            Z1=2.2;        //Level of Runner Exit above Tail Race, m

//Data Required:-
        rho=1000;       //Density of Water, Kg/m^3
        g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Vp=4*Q/(%pi*Dp^2);       //Velocity in Penstock, m/s
          Vo=4*Q/(%pi*Ddi^2);      //Velocity at Entry to the Draft Tube, m/s
          Hp=p_by_rho_g+Z+Vp^2/(2*g);       //Head just before Entry to Runner, m
          H=Hp-V2^2/(2*g);         //Working Head, m
          
     //(a)Overall Efficiency
              eta_o=P*1000/(rho*Q*g*H)*100;      //In Percentage
         
     // (b) The Direction of Flow relative to the Runner at Inlet
              ui=%pi*Do*N/60;       //m/s
              Vwi=eta_H*g*H/ui;      //m/s
              Vfi=Q/(%pi*Do*bo);     //m/s
              beta_i=180-atand(Vfi/(ui-Vwi));       //degrees

     // (c) The Pressure Head at entry to Draft Tube, p1/(rho*g)
             //By Applying Bernoulli's Equation with,
                    Z2=0;
                    p2_by_rho_g=0;
                    hf=(loss/100)*Vo^2/(2*g);
                    
          p1_by_rho_g=p2_by_rho_g+(V2^2-Vo^2)/(2*g)+(Z2-Z1)+hf;     //m
               

//Results:-
     printf("(a)The Overall Efficiency, eta_o=%.2f Percent\n",eta_o)        //The Answer Vary due to Round off Error
     printf("(b)The Direction of Flow relative to the Runner at Inlet, beta_i=%.2f Degrees \n",beta_i)        //The Answer Vary due to Round off Error
     printf("(c) The Pressure Head at entry to Draft Tube,   p1/(rho*g)=%.2f m (vaccum)\n",abs(p1_by_rho_g))


