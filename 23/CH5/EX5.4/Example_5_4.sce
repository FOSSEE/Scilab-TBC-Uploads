clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 5.4
//Caption : Program To Find the change in entropy in a steel Casing

//Given Values

//For Casting
Cp_Casting=0.5;//[KJ/Kg/K]
T1=723.15;//[K]
T0=298.15;//[K]
M_Casting=40;//[Kg]
//For Oil
Cp_Oil=2.5;//[KJ/Kg/K]
M_Oil=150;//[Kg]

//Formula  M1Cp1dT`=M2Cp2dT
//40*0.5*(T-723.15)=150*2.5*(298.15-T)
//Whence
T=((T1*M_Casting*Cp_Casting)+(T0*M_Oil*Cp_Oil))/((M_Casting*Cp_Casting)+(M_Oil*Cp_Oil));

//(a)-change in entropy For casting
del_S_Casting=approx(M_Casting*Cp_Casting*integrate('1/T','T',T1,T),2);

disp('KJ/K',del_S_Casting,'(a)Change In Entropy of Casting')

//(b)-change in entropy For Oil
del_S_Oil=approx(M_Oil*Cp_Oil*integrate('1/T','T',T0,T),2);

disp('KJ/K',del_S_Oil,'(b)Change In Entropy of Oil')

//(c)-Total
del_S_total=del_S_Casting+del_S_Oil;
disp('KJ/K',del_S_total,'(c)Total entropy change')

//End