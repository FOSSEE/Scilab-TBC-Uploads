//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.1
//To Find the Work done by the Impeller on the water per unit weight of water.

     clc
      clear

//Given Data:-
        Di=210;       //Internal diameter of Impeller, mm
        Do=420;      // External diameter of Impeller, mm
        N=1100;      //speed, rpm
        beta_i=20;    //Vane Angle at Inlet, degrees
        beta_o=30;    //Vane Angle at Outlet, degrees
    //As water enters the impeller radially,
        alpha_i=90;      //degrees


//Data Used:-
        g=9.81;       //Acceleration due to gravity, m/s^2


//Computations:-
         Di=Di/1000;      //m
         Do=Do/1000;       //m

        ui=%pi*Di*N/60;       //m/s
        uo=%pi*Do*N/60;      //m/s
        Vfi=ui*tand(beta_i);     //m/s
        Vfo=Vfi;
        Vwo=uo-Vfo/tand(beta_o);      //m/s
        Work=Vwo*uo/g;       //N-m/N

//Result:-
      printf(" The Work done by the Impeller on the water per unit weight of water =%.2f N-m/N \n",Work)       //The answer vary due to round off error


