clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-8.3 Page No.165\n');
Lf=2;            //[in] Free length of spring
Dm=0.620;        //[in] Mean diameter of spring

R=Lf/Dm;         //[] Free lengtth to mean diameter ratio

mprintf('\n The ratio of the free length of spring to mean diameter of spring is %f.',R);
mprintf(' From Figure 8.9 for squared and ground ends, this is a stable spring.');
