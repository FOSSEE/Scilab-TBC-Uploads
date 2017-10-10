//Fluid Systems - By - Shiv Kumar
//Chapter 11 - Centrifugal Pumps
//Example 11.26
//To Calculate the Specific Speed of Pump and the Power Input and Find the Head, Discharge and Power required at 900 rpm.

      clc
      clear

//Given Data:-
        
                N=1500;         //Speed, rpm
                Q=0.2;            //Discharge, m^3/s
                H=15;           //Head, m
                eta_o=0.68;         //Overall Efficiency
              N2=900;          //Speed, rpm
 
 //Data Used:-
        rho=1000;        //Density of water, kg/m^3
         g=9.81;          //Acceleratio due to gravity, m/s^2


//Computations:-
          Ns=N*Q^(1/2)/(H^(3/4));        //Specific Speed of Pump, SI Units
          P=rho*g*Q*H /eta_o;          //Power Input, W 

         Q1=Q;     H1=H;        N1=N;      P1=P;
          Q2=Q1*(N2/N1);        // m^3/s
          H2=H1*(N2/N1)^2;       //m
          P2=P1*(N2/N1)^3;       //W

//Results:-
        printf("Specific Speed of Pump, Ns=%.2f (SI Units)\n",Ns)
        printf(" Power Input, P=%.2f W\n",P)
        printf(" At 900 rpm (Condition 2)\n\t ")
            printf(" Head, H2=%.1f m \n\t Discharge,  Q2=%.2f m^3/s,\n\t Power required, P2=%.2f W",H2,Q2,P2)


