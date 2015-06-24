clc;
clear;
//Example 2.5
printf("Example 2.5\nPage 2.23")
//Given
A=1;  //let [sq m]
x1=0.23;   //thickness of fir brick layer[m]
x2=0.115;   // [m]
x3=0.23;   //[m]
T1=1213;  //Temperature of furnace [K]
T2=318;   //Temperature of furnace  [K]
dT=T1-T2;  //[K]
k1=6.047;   //W/(m.K) (fire brick)
k2=0.581;   //W/(m.K) (insulating brick)
k3=2.33;   //W/(m.K) (building brick)
Q_by_A=dT/((x1/k1)+(x2/k2)+(x3/k3))  //Heat lost per unit Area in Watt

R1=(x1/k1)  //Thermal resistance
R1=0.04     //Approximate
R2=(x2/k2)
R2=0.2025      //Approximate
R3=(x3/k3)
R3=0.1      //Approximate
Ta=T1-((dT*R1)/(R1+R2+R3))
Tb=((dT*R3)/(R1+R2+R3))+T2
Tb=565          //Approximation
printf("\nAnswer:Heat loss per unit area is %f W=%f J/s\n",Q_by_A,Q_by_A);
printf("\nAnswer:\n Ta=%f K =Temperature at the interface between fire brick and insulating brick\n Tb=%d K Temperature at the interface between insulating and building brick\n",Ta,Tb)

