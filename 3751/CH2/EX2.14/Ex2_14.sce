//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.14
      clc
     clear
//Given Data:-
        Vi=50;      //Absolute velocity of Jet at inlet, m/s
        u=25;         //velocity of vane, m/s
        ui=u;
        uo=u;
        alpha_i=32;       //Angle made by Vi at inlet, degrees
        alpha_l=90;       //Angle made by Vi at outlet, degrees
        alpha_o=180-alpha_l;      //degrees

//Computations:-
       Vfi=Vi*sind(alpha_i);      //m/s
       Vwi=Vi*cosd(alpha_i);     //m/s
       Vwi=Vwi-ui;        //m/s
       beta_i=atand(Vfi/Vwi);           //degrees
       Vri=Vfi/sind(beta_i);      //m/s
       Vro=Vri;
       beta_o=acosd(uo/Vro);       //degrees

//Result:-
     printf("Vane Angle at Inlet, beta_i=%.2f degrees \n", beta_i)
     printf("Vane angle at outlet, beta_o=%.2f degrees \n", beta_o)      //The answer vary due to round off error

