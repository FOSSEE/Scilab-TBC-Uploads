//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 17.9
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=220;                                           //Supply voltage in Volt
R=0.06;                                          //Resistance in Ohm
X=0.1;                                           //Reactance in Ohm/km
L=1;                                             //Length of section AB and BC in km
IB=100*(0.8+%i*0.6);                             //Current at point B in Amps
IC=100*(1+%i*0);                                 //Current at point C in Amps
ZBC=(R+%i*X);                                    //Impedance of section BC in Ohm
ZAB=(R+%i*X);                                    //Impedance of section AB in Ohm
BC=IC*ZBC;                                       //Drop in section BC in Volt
VB=V+BC;                                         //Potential at point B in Volt
I_AB=IB+IC;                                      //Current in section AB in Amps
V_AB=(IB+IC)*ZAB;                                //Voltage drop in section AB Volt
VA=VB+V_AB;                                      //Voltage at point A in Volt
VB1=V+BC;                                        //Potential at point B in Volt
pfa=acosd(0.8);                                  //Power factor angle of the load at point B
ref_ang=-pfa-atand(imag(VB1),real(VB1));         //Leading Power factor angle with reference to Vc
IB1=100*(cosd(ref_ang)+%i*sind(ref_ang));        //Current at point B in Amps
I_AB1=IB+IC;                                     //Current in section AB in Amps
V_AB1=(IB+IC)*ZAB;                               //Voltage drop in section AB Volt
VA1=VB1+V_AB1;                                   //Voltage at point A in Volt


printf("\nThe sending end voltage is %.2f Volt",abs(VA));
printf("\nThe phase angle difference between the voltages of two ends is %.2f degree",atand(imag(VA),real(VA)));
printf("\npower factor of the loads are with reference to farther-end voltage is %.2f degree",pfa);
printf("\npower factor of the loads are with reference to the voltages at the load points is %.2f degree",-(ref_ang)); 



