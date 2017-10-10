//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.13
//To Determine  the Blade Angle at Entry and Exit.

     clc
     clear

//Given Data:-
            R=0.6;       //Degree
            ui=15;       //Peripheral velocity of Runner at entry,  m/s
            Vfo=3.2;     //m/s
            Vfi=Vfo;
            Vo=Vfo;
     //As the Diameter of rotor at entry is Twice that at exit,
            Do_by_Di=2;


//Computations:-
              Vwi=(1-R)*2*ui;      //m/s
              beta_i=180-atand(Vfi/(ui-Vwi));       //degrees
              uo=ui/Do_by_Di;      //Velocity of Runner at Outlet, m/s
              beta_o=atand(Vfo/uo);         //degrees
               

//Results:-
     printf("The Blade Angle at Entry, beta_i=%.2f Degrees\n",beta_i)        //The Answer Vary due to Round off Error
     printf("The Blade angle at Exit, beta_o=%.3f Degrees \n",beta_o)


