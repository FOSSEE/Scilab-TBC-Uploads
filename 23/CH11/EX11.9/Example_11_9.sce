clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 11.9
//Caption : Program to Find the Fugacity Coefficients for mixture

P=25;//[KPa]
T=323.15;//[K]
R=83.14;
x1=0.5;
x2=1-x1;

ij=[11,22,12];
Tc_ij=[535.5,591.8,563.0];
Pc_ij=[41.5,41.1,41.3];
Vc_ij=[267,316,291];
Zc_ij=approx((Pc_ij.*Vc_ij)./(R*Tc_ij),3);
omega_ij=[0.323,0.262,0.293];

Tr_ij=approx(T./Tc_ij,3);
B0=approx(0.083-(0.422./(Tr_ij.^1.6)),3)
B1=approx(0.139-(0.172./(Tr_ij.^4.2)),3)
B_ij=round((R*Tc_ij./Pc_ij).*(B0+(omega_ij.*B1)));

delta_12=(2*B_ij(3))-B_ij(1)-B_ij(2);
R=8314;
si_1=approx(exp((P/(R*T))*(B_ij(1)+(x2^2*delta_12))),3);
si_2=approx(exp((P/(R*T))*(B_ij(3)+(x1^2*delta_12))),3);

Ans=[ij',Tc_ij',Pc_ij',Vc_ij',Zc_ij',omega_ij',Tr_ij',B0',B1',B_ij'];
disp(Ans,'   ij     Tcij     Pcij   Vcij     Zcij      Wij     Trij      B0       B1       Bij')

disp(si_1,si_2,'Fugacity Coefficients are ')

//End