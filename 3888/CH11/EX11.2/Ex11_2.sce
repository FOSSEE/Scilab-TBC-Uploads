//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 11.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


r=0.5;                                    //Resistance of the line in Ohm/km
l=5;                                      //Length of the line in km
L=1.76;                                   //Inductance of the line in mH/km
f=50;                                     //Supply frequency in Hz
sen_vtg=33;                               //Sending end voltage in kV
rec_vtg=32;                               //Receiving end voltage in kV
Vs=sen_vtg/(3)^(1/2);                     //Sending end phase voltage in kV
Vr=rec_vtg/(3)^(1/2);                     //Receiving end phase voltage in kV
R=r*l;                                    //Total resistance of line in Ohm
X=2*(%pi)*f*L*l*10^(-3);                  //Total Inductance of line in Ohm
pf1=0.8;                                  //Power factor
A=X^(2)+R^(2);                            //Coeffcient of Ir^(2) simlified in quadratic eqn
B=2*Vr*(R*pf1+X*sin(acos(pf1)));          //Coeffcient of Ir simlified in quadratic eqn
C=Vr^(2)-Vs^(2);                          //Constant simlified in quadratic eqn
Ir=(-B+sqrt(B^(2)-4*A*C))/(2*A);          //Receiving end current in A
reg=((Vs-Vr)/Vr)*100;                     //Efficiency of the line
P=3*Vr*Ir*pf1;                            //Output power in MW
Loss=3*Ir^(2)*R;                          //Line loss in MW
eff=(P/(P+Loss))*100;                     //Efficiency of the line


printf("\nLine current of the transmission line is %.3f kA",Ir);
printf("\nRegulation of the transmission line is %.3f percentage ",reg);
printf("\nEfficiency of the transmission line is %.2f percentage",eff);





