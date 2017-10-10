//Fluid Systems - By- Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.8
//To    (a) Find the Speed at which seperation may take place at commencement of suction stroke,      (b)Find the  change in Speed of Pump if an air vessel is fitted in the suction side.

    clc
     clear
   
//Given Data:-
        H_s=3.60;      //Suction Head, m
        d_s=225;      //Diameter of Suction Pipe, mm
        l_s=9.6;        //Length of Suction Pipe, m
        D=300;        //Pump cylinder diameter, mm
        L=450;       //Stroke length, mm
        
        H_a=9.6;      //Barometric Head, m of water
        H_sp=2.4;    //Head (m of water) for seperation 
        f=0.04;


//Data Used:-
       g=9.81;         //Acceleration due to gravity, m/s^2


//Computations:-
          D=D/1000;     //m
          L=L/1000;     //m
          d_s=d_s/1000;     //m

        a_s=(%pi/4)*d_s^2;       //m^2
        A=(%pi/4)*D^2;        //m^2
        r=L/2;        //m

     //Without Air Vessel
        H_as_by_omega2=(l_s/g)*(A/a_s)*r;       //H_as/omega^2
        omega=sqrt((H_a-H_s-H_sp)/H_as_by_omega2);       //rad/s
        N=omega*60/(2*%pi);       //rpm   

    //With Air Vessel
         Us_by_N=(A/a_s)*L/60;      //Us/N
         l_v=H_sp/2;     //m
         H_as_by_N2=(l_v/g)*(A/a_s)*(2*%pi/60)^2*r;         //H_as/N^2
         h_fs_by_N2=f*(l_s-l_v)*Us_by_N^2/(r*2*g);
         N1=sqrt((H_a-H_sp-H_s)/(H_as_by_N2+h_fs_by_N2));      //Speed of Pump if air vessel is fitted, rpm
         Change_In_Speed=N1-N;        //rpm


//Results:-
        printf("(a)Speed at which Seperation may take place, N=%.f rpm\n",N)
        printf("(b)Change in Speed with air vessel=%.f rpm\n",Change_In_Speed)       //The answer provided in the textbook is wrong


