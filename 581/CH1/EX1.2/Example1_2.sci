
clear;
clc;
printf("\tExample 1.2\n");
x=poly([0],'x');
k1=372; // Thermal Conductivity of slab,W/m*K
x1=0.003; // Thickness of slab,m
x2=0.002;// Thickness of steel,m
k2=17; // Thermal Conductivity of steel,W/m*K
T1=400; // Temperature on one side,C
T2=100;//Temperature on other side,C

Tcu=roots(x+2*x*(k1/x1)*(x2/k2)-(400-100));

//q=k1*(Tcu/x1)=k2*(Tss/x2);

Tss = Tcu*(k1/x1)*(x2/k2); // formula for temperature gradient in steel  side

Tcul=T1-Tss;
Tcur=T2+Tss;
printf("\t temperature on left copper side is : %.0f C\n",Tcul);
printf("\t Temperature on right copper  side is : %.0f C\n",Tcur);
q=k2*Tss/(1000*x2); // formula for heat conducted
printf("\t heat conducted through the wall is : %.0f W\n",q);
printf("\t our initial approximation was accurate within a few percent.");
//End