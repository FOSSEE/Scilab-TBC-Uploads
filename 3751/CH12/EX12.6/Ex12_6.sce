//Fluid Systems - By- Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.6
 
    clc
     clear
   
//Given Data:-
        D=200;        //Piston Diameter, mm
        L=300;       //Stroke length, mm
        H_s=4;      //Suction Head, m
        H_d=35;     //Delivery Head, m
        d_s=100;      //Diameter of Suction Pipe, mm
        d_d=d_s;      //Diameter of Delivery Head
        l_d=50;        //Length of Delivery Pipe, m
        l_s=10;        //Length of Suction Pipe, m
        f_s=0.04;    //Co-efficient of friction for Suction Pipe
        f_d=f_s;      //Co-efficient of friction for Delivery Pipe
        N=30;        //Speed of Pump, rpm


//Data Used:-
       g=9.81;         //Acceleration due to gravity, m/s^2
       rho=1000;      //Density of water, kg/m^3


//Computations:-
          D=D/1000;     //m
          L=L/1000;     //m
          d_s=d_s/1000;     //m
          d_d=d_d/1000;      //m

        a_s=(%pi/4)*d_s^2;       //m^2
        a_d=(%pi/4)*d_d^2;      //m^2
        A=(%pi/4)*D^2;        //m^2
        omega=2*%pi*N/60;      //rad/s
         r=L/2;        //m

    // (1) Suction Stroke
         //At end of Stroke,
          H_as=(l_s/g)*(A/a_s)*omega^2*r;        //m of water

         //At middle of Stroke,
             h_fs=f_s*(l_s/d_s)*(1/(2*g))*((A/a_s)*omega*r)^2;        //m of water
       
         H_sb=H_s+H_as;      //Pressure at begining of suction stroke, m of water (vaccum)
         H_se=H_s-H_as;      //Pressure at end of suction stroke, m  of water
         H_se=abs(H_se);     //m above atmosphere
         H_sm=H_s+h_fs;        //Pressure at middle of suction stroke, m of water (vaccum)

    // (1) Delivery Stroke
         //At end of Stroke,
          H_ad=(l_d/g)*(A/a_d)*omega^2*r;        //m of water

         //At middle of Stroke,
             h_fd=f_d*(l_d/d_d)*(1/(2*g))*((A/a_d)*omega*r)^2;        //m of water
       
         H_db=H_d+H_ad;      //Pressure at begining of delivery stroke, m of water (above atmosphere)
         H_de=H_d-H_ad;      //Pressure at end of delivery stroke, m  of water (above atm.)
         H_dm=H_d+h_fd;        //Pressure at middle of delivery stroke, m of water (above atm.)

          m=rho*A*L*N/60;     //Mass of Water Discharge, kg/s
      //Referring to Equation 12.18 in the textbook,
         Work= m*g*(H_s+H_d+(2/3)*h_fs+(2/3)*h_fd);       //Total Work done by Pump, W

//Results:-
    printf("(1)Suction Stroke\n\t") 
        printf("Pressure at Begining of the Stroke=%.2f m of water (vaccum)\n\t",H_sb)       //The answer vary due to round off error
        printf("Pressure at End of the Stroke=%.1f m of water (above atmosphere\n\t",H_se)       //The answer vary due to round off error
        printf("Pressure at Middle of the Stroke=%.3f m of water (vaccum)\n\n",H_sm)       //The answer vary due to round off error

    printf("(2)Delivery Stroke\n\t") 
        printf("Pressure at Begining of the Stroke=%.2f m of water ( above atmosphere )\n\t",H_db)       //The answer vary due to round off error
        printf("Pressure at End of the Stroke=%.2f m of water (above atm.)\n\t",H_de)       //The answer vary due to round off error
        printf("Pressure at Middle of the Stroke=%.2f m of water ( above atm. )\n",H_dm)       //The answer vary due to round off error
    
     printf("  Power Required to drive the Pump=%.2f W",Work)        //The answer vary due to round off error    




