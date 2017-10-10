//Fluid Systems- By Shiv Kumar
//Chapter 7- Performance of Water Turbine
//Example 7.12
// To Find    (a)The Speed ,Discharge and Power required for the Actual Pump    (b) The Discharge of the model.
   clc
   clear

//Given:-
      Lr=5;        //Scale Ratio
      DpbyDm=Lr;
       DmbyDp=1/DpbyDm;
        //For Model
             Pm=22;         //Power Required, kW
             Hm=7;        //Head, m
             Nm=410;     //Speed, rpm
             eta_m=1;     //Assumption that  efficiency of the model is 100%
      //For Prototype
        Hp=35;         //Head, m
  //Data Required:-
       rho=1000;     //Density of Water, Kg/m^3
       g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
       Np=Nm*DmbyDp*(Hp/Hm)^(1/2);     //rpm
       Pp=Pm*(Np/Nm)^3*DpbyDm^5;    //KW
       Qm=Pm*1000*eta_m/(rho*g*Hm);    //m^3/s
       Qp=Qm*(Np/Nm)^2*DpbyDm^2;       //m^3/s

//Results:-
       printf("(a)For the Actual Pump(Prototype):\n         Speed, Np=%.2f rpm  , \n          Discharge, Qp=%.3f m^3/s  and \n         Power,Pp=%.2fKW\n",Np,Qp,Pp)         //The Answer vary due to Round off Error(For Qp),  The Answer Provided in the Textbook is Wrong (For Np and Pp).

       printf("(b)The Discharge of the Model, Qm=%.4f m^3/s",Qm)        //The Answer vary due to Round off Error


