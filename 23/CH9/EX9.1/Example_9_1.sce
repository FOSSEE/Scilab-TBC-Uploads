clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 9.1
//Caption : Program to Find the COP of a Refrigerator

//Given Values
T1=261.15;//[K] Temgeratureof refrigerated space
T2=294.15;//[K] Temperature of cooling water
dT=5.6;//[K]    Temperature Difference
Qc=35.2;//[kW]  Refrigerant Capacity
eta=0.8;//Efficeincy(b)

//(a) Carnot Refrigerator
Tc=T1-dT;
Th=T2+dT;
//Using Eqn(9.3)
w=approx(Tc/(Th-Tc),2);
disp(w,'(a)Coefficient of Performance for Carnot Refrigerator')

//(b)  Vapor Compression Cycle

//From Table(9.1)
//@ Tc=255.55K
H2=388.13;//[KJ/Kg]
S2=1.7396;//[KJ/Kg/K]

//@ Th=299.75K
H4=236.76;//[KJ/Kg]

S3=S2;//Isentropic
//Hence
H3=420.27;//[KJ/Kg]
//Step 2 --> 3
del_Hs=H3-H2;
//But Compressor Efficiency = 0.80
del_Hs=del_Hs/eta
//Step 1 --> 4
H1=H4;//isenthalpic
w=approx((H2-H4)/del_Hs,2);
disp(w,'(b)Coefficient of Performance for Vapor Compression Cycle')
rm=approx(Qc/(H2-H4),4);//[Kg/s]
disp('kg/s',rm,'Circulation rate');

//End