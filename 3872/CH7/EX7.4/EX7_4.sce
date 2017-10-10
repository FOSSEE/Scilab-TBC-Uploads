//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 7 ; Example 7.4
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Srated = 100;                                                //rated power in MVA
V1 = 13.8;                                                   //generator supply voltage in kV
Xg = 0.15;                                                   //generator input reactance in ohm
Vline = 138;                                                 //transmission line voltage in kV
Xline = 20;                                                  //transmission line reactance in ohm
Vprtr1 = 13.8;                                               //primary side voltage of transformer 1 in kV
Vsectr1 = 138;                                               //secondary side voltage of transformer 1 in kV
Xt1 = 0.10;                                                  //reactance of transformer 1 in ohm
Vprtr2 = 138;                                                //primary side voltage of transformer 2 in kV
Vsectr2 = 13.8;                                              //secondary side voltage of transformer 2 in kV
Xt2 = 0.10;                                                  //reactance of transformer 2 in ohm
V2 = 13.8;                                                   //motor supply voltage in kV
Xm = 0.20;                                                   //motor reactance in ohm
Vf = 1.05;                                                   //pre fault voltage in per unit
Ybus = -%i*[9.9454 -3.2787; -3.2787 8.2787];                 //bus admittance matrix in per unit using direct inspection from fig 7.5
Zbus = inv(Ybus);                                            //bus impedance matrix in per unit
If1 = Vf/Zbus(1,1);                                          //sub transient fault current at bus 1 in per unit
E1 = (1- (Zbus(1,1)/Zbus(1,1)))*Vf;                          //voltage at bus 1 in V
E2 = (1-((Zbus(2,1)/Zbus(1,1))))*Vf;                         //voltage at bus 2 in V 
Xline =Xline*Srated/(Vline^2);                               //line impedance in ohm
I21 = ((E2-E1)/(%i*(Xline+Xt1+Xt2)));                        //fault current from transmission line in per unit
If2 = Vf/Zbus(2,2);                                          //sub transient fault current at bus 2 in per unit
E3 = (1-(Zbus(1,2)/Zbus(2,2)))*Vf;                           //voltage at bus 3 in V
E4 = (1-(Zbus(2,2)/Zbus(2,2)))*Vf;                           //voltage at bus 4 in V
I12 = ((E3-E4)/(%i*(Xline+Xt1+Xt2)));                        //current to fault from transmission line in per unit

printf('\nThe 2*2 positive sequence bus impedance matix in pu is ');
disp (Zbus);
printf('\nThe Sub transient fault current at bus 1 is = %fi per unit',imag(I21));
printf('\nThe Sub transient fault current at bus 2 is = %fi per unit',imag(I12));
