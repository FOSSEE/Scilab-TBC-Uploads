//Fluid Systems - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.12
 
      clc
       clear

//Given Data:-
      n=2;         //Number of Jets
      P=5000;        //Shaft Power, HP
      N=375;        //Speed of Shaft, rpm
      Hth=200;     //Theoretical Head at Base of Nozzle, m
      eta_p=90/100;       //Efficiency of Power Transmission
      D=1.65;         //Diameter of the Runner, m
      Vel_per=10;        //Percentage by which velocity is decreased
      Deflection=165;         //Jet Deflection, degrees
       eta_o=90/100;          //Overall Efficiency
      Cv=0.98;


//Data Used:-
        rho=1000;          //Density of water, kg/m^3
         g=9.81;            //Acceleration due to gravity, m/s^2

//Computations:-
          P=P*736;       //W
          Hact=eta_p*Hth;       //Actual Head available at base of Nozzle, m
          Vro_by_Vri=1-Vel_per/100;          //Vro/Vri
          beta_o=180-Deflection;        //degrees

           u=%pi*D*N/60;         //Velocity of Runner, m/s
           ui=u;
           uo=u;
          Vi=Cv*sqrt(2*g*Hact);         //m/s
          Vwi=Vi;
          Vri=Vi-u;      //m/s
         Vro=Vri*Vro_by_Vri;     //m/s
         Vrwo=Vro*cosd(beta_o);      //m/s
         Vwo=uo-Vrwo;        //m/s
       
     //(a)Efficiency of Runner, eta_H
                eta_H=2*(Vwi-Vwo)*u/Vi^2*100;          //In Perecentage

    //(b)Diameter of each jet, d
         Q=P/(rho*g*Hact*eta_o);          //Discharge, m^3/s
         d=sqrt(Q/((%pi/4)*n*Vi));       //Diameter of each Jet, m

//Results:-
      printf("(a)Efficiency of the Runner, eta_H=%.2f Percent\n",eta_H)       //The answer vary due to round off error
      printf("(b)Diameter of each Jet , d=%.3f m\n",d)

