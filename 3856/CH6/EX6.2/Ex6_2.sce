//Calculate the value of Change in Gibbs Energy (delG) for melting of ice at 0 degree celcious, 10 degree celcious and minus 10 degree celcious

//Example 6.2

clc;

clear;

delH=6.01;  //Change in Enthalpy in kJ mol^-1

T1=273;  //Temperature of ice in K

delS=22.0;  //Change in Entropy in J K^-1

delG1=delH-(T1*delS/1000);  //Change in Gibbs Energy in kJ

printf("(a)Change in Gibbs Energy at Zero degree celcious = %.0f ",delG1);

T2=283;  //Temperature of ice in K

delG2=delH-(T2*delS/1000);  //Change in Gibbs Energy in kJ

printf("\n(b)Change in Gibbs Energy at Ten degree celcious = %.2f kJ",delG2);

T3=263;  //Temperature of ice in K

delG3=delH-(T3*delS/1000);  //Change in Gibbs Energy in kJ

printf("\n(c)Change in Gibbs Energy at minus Ten degree celcious= %.2f kJ",delG3);
