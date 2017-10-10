//Fluid Systems by Shiv Kumar
//Chapter 7 - Performance of water turbine
//Example 7.1
//To Calculate specific speed of turbine and state the type of turbine
   clc
   clear
//Given
   P=8000;       //Power developed, KW
   H=30;       //Head, m
   N=140;        //Speed, rpm
//Computations
       Ns=N*P^(1/2)/(H^(5/4));       // specific speed of turbine , in SI UNITS

//Results
      printf("The Specific speed of Turbine is %.2f (SI Units)\n",Ns)
   //To Determine the type of turbine
       if Ns>51 & Ns<=255 then
              printf(" The type of turbine is Francis") 
     elseif  Ns>=8.5 & Ns<=30 then
            printf("The type of turbine is Pelton Wheel with single jet") 
     elseif Ns>30& Ns<=51 then
            printf("The type of turbine is Pelton Wheel with multi jet")
     elseif Ns>255 & Ns<=860 then
             printf("The type of turbine is Kaplan or Propeller Turbine")
  end


