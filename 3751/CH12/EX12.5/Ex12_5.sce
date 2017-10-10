//Fluid Systems - By Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.5
//To Determine the Pressure Head on Piston at Begining, Middle and End of Suction Stroke.
  
      clc
      clear

//Given Data:-
         L=150;       //Length of Stroke, mm
         l_s=7;          //Length of Suction Pipe, m
         ds_by_D=3/4;         //Ratio of Suction Pipe Diameter to Piston Diameter, ds/D
         hs=2.5;       //Suction Head, m
         ds=75;      //Diameter of Suction Pipe, mm
         N=75;         //Crank Speed, rpm
         f=0.01;        //Co-efficient of Friction


//Data Used:-
     g=9.81;       //Acceleration due to gravity, m/s^2
     h_atm=10.33;        //Atmospheric Pressure Head, m of water


//Computations:-
        L=L/1000;     //m
        ds=ds/1000;      //m

          r=L/2;      //Crank radius, m
          A_by_as=(1/ds_by_D)^2;       
         omega=2*%pi*N/60;          //Angular Velocity, rad/s
         
//At Begining of Suction Stroke,
        theta=0;        //degrees
        h_as=(l_s/g)*A_by_as*omega^2*r*cosd(theta);       //Acceleration Head, m of water                 
        h_fs=(4*f*l_s/(2*g*ds))*(A_by_as*omega*r*sind(theta))^2;         //Head loss due to friction, m of water
        h_v=hs+h_fs+h_as;          //Pressure Head on Piston, m of water Vaccum
        h_abs=h_atm-h_v;          //Pressure Head on Piston, m of water Absolute
   //Result 1
      printf("At Begining of Suction Stroke\n  Pressure Head on Piston=%.2f m of water Vaccum \n\t\t\t =%.2f m of water Absolute\n\n",h_v,h_abs)       //The answer vary due to round off error


//At Mid of Suction Stroke,
        theta=90;        //degrees
        h_as=(l_s/g)*A_by_as*omega^2*r*cosd(theta);       //Acceleration Head, m of water                 
        h_fs=(4*f*l_s/(2*g*ds))*(A_by_as*omega*r*sind(theta))^2;         //Head loss due to friction, m of water
        h_v=hs+h_fs+h_as;          //Pressure Head on Piston, m of water Vaccum
        h_abs=h_atm-h_v;         //Pressure Head on Piston, m of water Absolute
   //Result 2
      printf("At Middle of Suction Stroke\n  Pressure Head on Piston=%.4f m of water Vaccum \n\t\t\t =%.3f m of water Absolute\n\n",h_v,h_abs)       //The answer vary due to round off error


//At End of Suction Stroke,
        theta=180;        //degrees
        h_as=(l_s/g)*A_by_as*omega^2*r*cosd(theta);       //Acceleration Head, m of water                 
        h_fs=(4*f*l_s/(2*g*ds))*(A_by_as*omega*r*sind(theta))^2;         //Head loss due to friction, m of water
        h_v=hs+h_fs+h_as;          //Pressure Head on Piston, m of water Vaccum
        h_abs=h_atm-h_v;         //Pressure Head on Piston, m of water Absolute
   //Result 3
      printf("At End of Suction Stroke\n  Pressure Head on Piston=%.2f m of water Vaccum \n\t\t\t =%.2f m of water Absolute\n\n",h_v,h_abs)       //The answer vary due to round off error



