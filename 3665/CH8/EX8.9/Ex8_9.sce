clc//
//
//

//Variable declaration
x=0.6532;
y=0.3010;
T1=273+20;    //temperature(K)
T2=273+32;    //temperature(K)
k=8.616*10^-5;

//Calculation
dy=x-y;
dx=(1/T1)-(1/T2);
Eg=2*k*dy/dx;      //energy band gap(eV)

//Result
printf("\n energy band gap is %0.3f eV",Eg)
printf("\n answer varies due to rounding off errors")
