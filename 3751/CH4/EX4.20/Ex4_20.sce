//Fluid Systems - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.20
  
      clc
       clear

//Given Data:-
      D=1.6;        //Mean Diameter of Bucket Circle, m
      P=3200;        //Power Developed, kW
      n=2;        //Number of Wheels
      H=300;        //Effective Head, m
      N=410;         //Speed, rpm
      eta_o=0.89;       //Overall Efficiency
      Cv=0.98;        //Co-efficient of Velocity

 
//Data Used:-
        rho=1000;          //Density of water, kg/m^3
         g=9.81;            //Acceleration due to gravity, m/s^2

//Computations:-
       Q=P*1000/(rho*g*H*eta_o);            //Discharge, m^3/s
       
     //(a)Diameter of the Nozzle, d
            Vi=Cv*sqrt(2*g*H);        //m/s
             d=sqrt(Q/((%pi/4)*Vi))*1000;           //mm

    //(b)Speed Ratio, Ku
            u=%pi*D*N/60;           //m/s
            Ku=u/sqrt(2*g*H);    

    //(c)Specific Speed, Ns
        Ns=N*sqrt(P/n)/(H^(5/4));        // In SI Units


//Results:-
       printf(" (a)Diameter of the Nozzle, d=%.2f mm\n",d)       //The answer vary due to round off error
       printf(" (b)Speed Ratio, Ku =%.3f \n",Ku)       //The answer vary due to round off error
       printf(" (c)Specific Speed, Ns =%.f (SI Units)\n",Ns)


