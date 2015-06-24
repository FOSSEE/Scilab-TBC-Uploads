clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 7.8
//Caption : Program to Find the Work Required and Properties of Discharge Steam

//Given Values

P1=100;//[KPa]  (Tsat/tsat)=327.78K/99.63`C)

//From Steam Tables @ 100KPa
S1=7.3598;//[KJ/Kg/K]
H1=2675.4;//[KJ/Kg]

P2=300;//[KPa]
//From Steam Tables @ 300KPa
S2=S1;//Isentropic
H2i=2888.8;//[KJ/Kg]

eta=0.75;//Efficiency

del_H=H2i-H1;
del_H=del_H/eta;
H2=approx(H1+del_H,1);//[KJ/Kg]

//From Steam Tables w.r.t H2
T2=519.25;//[K]
S2=7.5019;//[KJ/Kg/K]

Ws=approx(del_H,1);//[KJ/Kg]  Work Reqd

disp('KJ/Kg',H2,'Enthalpy')
disp('KJ/Kg/K',S2,'Entropy')
disp('K',T2,'Temperature')
disp('KJ/Kg',Ws,'Work Done')

//End