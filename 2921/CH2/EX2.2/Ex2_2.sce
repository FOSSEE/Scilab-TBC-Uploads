clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-2.2   Page 28 ')    //Example 2.2

G=3.6;                           //Diffential ratio
N=3500/G;                        //[rpm] Axle rotational speed
d=30;                            //[in] Diameter of tire
dist=N/(60)*(%pi*d)              //[in] Distance traveled in 1 sec
dist=dist/12;                    //[ft] Distance traveled in 1 sec
t=1;                             //[sec] Time period
F=864;                           //[lb] Force exerted by tire on road surface

W=F*dist;                        //[ft*lb] Workdone in 1 sec
P=F*dist/t;                      //[ft*lb/sec] Power
hp=P/550;                        //[hp] Power in horse power 1hp=550 ft*lb/sec

mprintf('\n\n Power to do work %f hp',hp);

//Comparing it to motor output:

Tm=300*12;                        //[in*lb] Engine torque
Nm=3500;                          //[rpm] Engine speed
Pm=Tm*Nm/63000; 

mprintf('\n Motor output %f hp',Pm);
mprintf('\n The power output equaled the power at tire/road surface.');

//Note: The deviation of answer from the answer given in the book is due to round off error.(In the book values are rounded while in scilab actual values are taken)
