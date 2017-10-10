//Fluid Systems - By - Shiv Kumar
//Chapter 11 - Centrifugal Pumps
//Example 11.22
 
      clc
      clear

//Given Data:-
          //For Model,
             H_mM=7.5;       //Manometric Head, m
             Nm=1000;        //Speed, rpm
             Pm=25;          //Shaft Power, kW
        
        //For Prototype,
             H_mP=23;           //Manometric Head, m

      Dm_by_Dp=1/6;             //Scale Ratio


//Computations:-
      
         // (a)Working Speed of the Prototype, Np 
           Np=Nm*Dm_by_Dp*sqrt(H_mP/H_mM);       //rpm

       // (b)Shaft Power of the Prototype, Pp
              Pp=Pm*(Np/Nm)^3*(1/Dm_by_Dp)^5;           //kW

       // (c)Ratio of Flow Rates handled by the protoytpe and the Model, Qp/Qm
          Qp_by_Qm=(Np/Nm)*(1/Dm_by_Dp)^3;       

//Results:-
          printf(" (a)Working Speed of the Prototype, Np =%.2f rpm\n",Np)       //The answer vary due to round off error
          printf(" (b)Shaft Power of the Prototype, Pp =%.2f kW\n",Pp)       //The answer vary due to round off error
          printf(" (c)Ratio of Flow Rates handled by the protoytpe and the Model=%.2f ",Qp_by_Qm)       //The answer provided in the textbook is wrong

