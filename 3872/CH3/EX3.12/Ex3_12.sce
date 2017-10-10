//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.12
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sr=1000                             //rated power of transformer in kVA
V1rated=13.8                        //rated voltage of delta winding of transformer in kV
V2rated=345                         //rated voltage of wye winding of transformer in kV
Zeq=%i*0.10                         //per unit equivalent impedance
Sb=500                              //rated power of transformer in MVA
VbXLL=13.8                          //line to line X terminal base voltage in kV
VbHLL=345                           //line to line H terminal base voltage in kV


at=(V1rated/V2rated)                //ratio of transformer corresponding to rated tap
b=(VbXLL/VbHLL)
c=at/b
Zpunew=Zeq*(Sb/Sr)                  //per unit equivalent impedance
at10=(V1rated/(V2rated*0.9))        //ratio of transformer corresponding to 10 percentage tap
b10=(V1rated/V2rated)
c10=(at10/b10)
Yeq=(1/Zpunew)
Y12=c10*Yeq                         //admittance at node 12 in per unit
Y11=(1-c10)*Yeq                     //admittance at node 11 in per unit
Y22=(((abs(c10))^2)-c10)*Yeq          //admittance at node 22 in per unit


printf('The per unit equivalent impedance is %.4fi pu\n',imag(Zpunew));
printf('The ratio of transformer corresponding to rated tap is %.4f\n',at);
printf('The ratio of transformer corresponding to 10 percentage tap is %.4f\n',at10);
printf('The admittance at node 12 is %.4fi per unit\n',imag(Y12));
printf('The admittance at node 11 is %.4fi per unit\n',imag(Y11));
printf('The admittance at node 22 is %.4fi per unit\n',imag(Y22));









