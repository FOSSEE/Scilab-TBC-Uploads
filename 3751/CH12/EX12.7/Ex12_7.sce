//Fluid Systems - By- Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.7
//To Calculate (a)The Absolute Head in the Pump corresponding to the four corners of the cord and also the mid strokes      (b)The Work done/minute.

    clc
     clear
   
//Given Data:-
        D=125;        //Bore of the Pump, mm
        L=125;       //Stroke length, mm
        N=30;        //Speed of Pump, rpm
        H_s=3;      //Suction Head, m
        H_d=15;     //Delivery Head, m
        d_s=62.5;      //Diameter of Suction Pipe, mm
        d_d=d_s;      //Diameter of Delivery Head
        l_d=18;        //Length of Delivery Pipe, m
        l_s=l_d;        //Length of Suction Pipe
        f=0.032;    //Co-efficient of friction for both Pipes


//Data Used:-
       g=9.81;         //Acceleration due to gravity, m/s^2
       rho=1000;      //Density of water, kg/m^3
       H_a=10.2;       //Atmospheric Pressure Head, m of water

//Computations:-
          D=D/1000;     //m
          L=L/1000;     //m
          d_s=d_s/1000;     //m
          d_d=d_d/1000;      //m

        a=(%pi/4)*d_s^2;       //m^2
        A=(%pi/4)*D^2;        //m^2
        omega=2*%pi*N/60;      //rad/s
         r=L/2;        //m

        H_as=(l_s/g)*(A/a)*omega^2*r;       //m
        h_fs_max=f*(l_s/d_s)*(1/(2*g))*((A/a)*omega*r)^2;          //m
    //As Pipes are of same diameter and length,
        H_ad=H_as;
        h_fd_max=h_fs_max; 
     
        H_m=H_a-H_s-H_as;        //Pressure Head at 'm' , m of water
        H_r= H_a-H_s-h_fs_max ;        //Pressure Head at 'r' , m of water
        H_n=H_a-H_s+H_as ;        //Pressure Head at 'n' , m of water
        H_at_s= H_a+H_s+H_as ;        //Pressure Head at 's' , m of water
        H_o=H_a+H_d+h_fd_max ;        //Pressure Head at 'o' , m of water
        H_q=H_a+H_d+H_ad ;        //Pressure Head at 'q' , m of water

     m=rho*A*L*N*2/60;       //mass of water/s,  kg/s
     Work_s=m*g*(H_s+H_d+(2/3)*h_fs_max+(2/3)*h_fd_max);     //Word done/s, W
     Work_m=Work_s*60;     //Work done/min. , J/min

//Results:-
      printf("Pressure Head at m =%.2f m of water\n ",H_m)       //The answer vary due to round off error
      printf("Pressure Head at r =%.3f m of water\n ",H_r)       //The answer vary due to round off error
      printf("Pressure Head at n =%.2f m of water\n ",H_n)       //The answer provided in the textbook is wrong
      printf("Pressure Head at s =%.2f m of water\n ",H_at_s )     //The answer provided in the textbook is wrong
      printf("Pressure Head at o =%.3f m of water\n ",H_o)       //The answer vary due to round off error
      printf("Pressure Head at q =%.2f m of water\n\n ",H_q)       //The answer provided in the textbook is wrong

       printf("Work done/s=%.1f W  \n Work done/minute=%.2f J/min. \n",Work_s,Work_m)      //The answer provided in the textbook is wrong




