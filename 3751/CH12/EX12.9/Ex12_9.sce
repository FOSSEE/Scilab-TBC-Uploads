//Fluid Systems - By - Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.9
//To Determine the Pressure on the Cylinder at the Begining of the Stroke        (a)When no air vessel is fitted,         (b)When air vessel is fitted at the cylinder level.

        clc
         clear
           
//Given Data:-
        d_s=150;       //Diameter of Suction Pipe, mm
        l_s=12;        //Length of Suction pipe, m
        H_s=3;       //Suction Head, m
        D=225;       //Cylinder Diameter, mm
        L_s=375;        //Stroke Length, mm
        L=1.5;        //Length of Connecting Rod, m
        N=20;       //Crank Speed, rpm
        l_v=1.5;     //m
        f=0.04;      //Co-efficient of friction

//Data Used:-
      g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
         d_s=d_s/1000;     //m
         D=D/1000;       //m
         L_s=L_s/1000;      //m

         a_s=(%pi/4)*d_s^2;      //m^2
         A=(%pi/4)*D^2;      //m^2
         omega=2*%pi*N/60;       //rad/s
          r=L_s/2;       //m

          printf("Without Air Vessel : \n\t")
           //(i) Assuming Simple Harmonic Motion :
                   printf("(i) Assuming Simple Harmonic Motion\n\t\t")  
                    H_as=(l_s/g)*(A/a_s)*omega^2*r;       //m of water
                    H=H_s+H_as;      //Pressure at the begining of stroke, m of water (vaccum)
           //Result (a) (i)
                printf(" Pressure at the begining of stroke=%.2f m of water (vaccum) \n\t",H)        //The answer vary due to round off error

          //(ii) If Simple Harmonic Motion is not assumed :
                  printf(" (ii) If Simple Harmonic Motion is not assumed : \n\t\t")
                   H_as=H_as*(1+r/L);     
                   H=H_s+H_as;      //Pressure at the begining of stroke, m of water (vaccum)
           //Result (a) (ii)
                printf(" Pressure at the begining of stroke=%.3f m of water (vaccum) \n\n",H)       //The answer vary due to round off error 
      

     //(b) When Air Vessel is fitted
          printf(" When Air Vessel is fitted : \n\t")

              Us=(A/a_s)*L_s*N/60;      //m/s
              h_fs=(f*(l_s-l_v)/d_s)*(Us^2/(2*g));      //m of water

           //(i) Assuming Simple Harmonic Motion :
                   printf("(i) Assuming Simple Harmonic Motion\n\t\t")
                    H_as=(l_v/g)*(A/a_s)*omega^2*r;       //m of water (vaccum)
                    H=H_s+H_as+h_fs;      //Total Pressure Head in the Cylinder, m of water below atmospheric
         //Result (b) (i)
                printf(" Total Pressure Head in the Cylinder =%.4f m of water below atmospheric or vaccum \n\t",H)        //The answer vary due to round off error

          //(ii) If Simple Harmonic Motion is not assumed :
                  printf(" (ii) If Simple Harmonic Motion is not assumed : \n\t\t")
                   H_as=H_as*(1+r/L);     
                   H=H_s+H_as+h_fs;      // Total Pressure Head in the Cylinder , m of water below atmospheric
          //Result (b) (ii)
                printf(" Total Pressure Head in the Cylinder =%.4f m of water below atmospheric \n",H)        //The answer vary due to round off error
      


      
