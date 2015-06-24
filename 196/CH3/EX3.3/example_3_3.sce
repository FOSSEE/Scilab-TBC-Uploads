//Chapter 3
//Example 3-3
//ProbOnOpampParameters 
//Page 48,49,figure 3-2
clear;clc;
//Given
Rf=250*(10^3);//Feedback Resistance in Ohms
Ri=10*(10^3);//Input Resistance in Ohms
Ei=0.5;//Input voltage
//Calculate
//Example 3-3(a)
I=Ei/(Ri);
printf("\n\n Value of current through Rf =  %.6f A \n\n",I)
//Example 3-3(b)
VRf=I*Rf;
printf("\n\n Voltage through Rf =  %.4f V \n\n",VRf)
//Example 3-3(c)
Ei1=-0.5;
Vout=-(Rf/Ri)*Ei1;
printf("\n\n Output Voltage =  %.4f V \n\n",Vout)
printf("\n\n Thus the magnitude of the output voltage does equal the voltage across Rf and Acl=-25")