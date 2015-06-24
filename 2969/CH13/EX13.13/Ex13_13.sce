clc
clear
//DATA GIVEN
Ta=40;                      //number of teeth of gear A
Tb=100;                     //number of teeth of gear B
Tc=50;                      //number of teeth of gear C
Td=150;                     //number of teeth of gear D
Te=52;                      //number of teeth of gear E
Tf=130;                     //number of teeth of gear F
Na=1000;                    //speed of the motor shaft in R.P.M.

//(Nf/Na)=(Ta/Tb)*(Tc/Td)*(Te/Tf)
Nf=(Ta/Tb)*(Tc/Td)*(Te/Tf)*Na;      //Speed of the output shaft in R.P.M.

printf(' The Speed of the output shaft, Nf is: %3.2f R.P.M. \n',Nf);
