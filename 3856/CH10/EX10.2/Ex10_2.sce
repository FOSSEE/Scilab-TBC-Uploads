//Calculate the Standard Reduction Potential for the Half reaction Fe(three positive)(aq)+3 electron =Fe(s).  

//Example 10.2

clc;

clear;

v1=2;  //Number of electron in first reaction 

v2=1;  //Number of electron in second  reaction 

v3=3;  //Number of electron in third reaction 

E1=-0.447;  //Standard Reduction Potential for first reaction in V

E2=0.771;  //Standard Reduction Potential for second  reaction in V

E3=(v1*E1+v2*E2)/v3;  //Standard Reduction Potential for first reaction in V (delrG3=delrG1+delrG2)

printf("Standard Reduction Potential = %.3f V",E3);
