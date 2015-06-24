clc
clear
//continued from Example 1
//DATA GIVEN
V=1;                            //volume dealt with per min at inlet in m^3/mim
Vc=1/300;                       //volume drawn in per cycle, in m^3/cycle
r=1.5;                          //stroke to bore ratio
ETAc=0.85;                      //mechanical efficiency of the compressor
ETAmt=0.90;                     //mechanical efficiency of the motor transmission

//cylinder volume, Vc=(pi/4)D^2*L
D=[(Vc*4/%pi)/r]^(1/3);         //bore in m

//from example 1
Pi=4.23/ETAc;                   //power input to the compressor in kW
MP=Pi/ETAmt;                    //motor power in kW

printf(' (i) The Cylinder bore,D is: %3.1f mm. \n',(D*1000));
printf(' (ii) The Motor power is: %1.2f kW. \n',MP);
