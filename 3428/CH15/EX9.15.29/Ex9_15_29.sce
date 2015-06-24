//Section-9,Example-4,Page no.-E.57
//To calculate the transport number of H+ and Cl- ions.
clc;
Cl_1=0.175                   //Mass of Cl- ions before electrolysis
M_Cb=20.175                  //Mass of cathode solution before electrolysis
Cl_2=0.146                   //Mass of Cl- ions after electrolysis
M_Ca=18.466                 //Mass of cathode solution after electrolysis
M_b=M_Cb-Cl_1             //Mass of water before electrolysis
M_a=M_Ca-Cl_2             //Mass of water after electrolysis
M_1=(M_a*Cl_1)/M_b
L=(M_1-Cl_2)
t_no1=(L/(0.2508*(35.5/108)))
disp(t_no1,'Transport number of Cl- ions')
t_no2=1-t_no1
disp(t_no2,'Transport number of H+ ions')
