//Fluid Systems - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.18
  
      clc
       clear

//Given Data:-
       Ns=15;         //Specific Speed
      P=1200;        //Shaft Power, kW
      Ht=500;     //Total Head at reservoir, m
      Loss_per=5;       //Percentage of Head loss in Pipe friction
      Cv=0.98;        //Co-efficient of Velocity
      Ku=0.45;        //Speed Ratio
     eta_o=85/100;       //Overall Efficiency
      n=2;       //Number of Jets

//Data Used:-
        rho=1000;          //Density of water, kg/m^3
         g=9.81;            //Acceleration due to gravity, m/s^2

//Computations:-
          H=Ht-Loss_per/100*Ht;          //Effective Head, m
         
      //(a)Speed of Runner, N
              N=Ns*H^(5/4)/sqrt(P/n);        //rpm

     //(b)Diameter od each Jet, d
           Q=P*1000/(rho*g*H*eta_o);          //Net Discharge, m^3/s
            q=Q/n;             //Net Discharge per Jet, m^3/s
            Vi=Cv*sqrt(2*g*H);        //m/s
           d=sqrt(q/((%pi/4)*Vi));         //m
    
      //(c)Mean Diameter of Bucket Circle, D
          D=Ku*60*sqrt(2*g*H)/(%pi*N);         //m

     //(d)Number of Buckets in the Runner, Z
            Z=round(0.5*D/d+15);         

//Results:-
         printf(" (a)Speed of the Runner, N=%.f rpm\n",N)
         printf(" (b)Diameter od each Jet, d =%.3f m\n",d)
         printf(" (c)Mean Diameter of Bucket Circle, D =%.3f m\n",D)
         printf(" (d)Number of Buckets on the Runner, Z =%.f \n",Z)

