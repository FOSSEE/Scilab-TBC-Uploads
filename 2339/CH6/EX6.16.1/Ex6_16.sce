clc
clear

r=19;       //Compression Ratio
P1=1;       //in bar
T1=17+273;  //in K
Qs=730;     //in kJ/cycle
G=1.4;

//For process 1-2
m=1;        //in kg
R=0.287;    //Universal Gas Constant
V1=(m*R*T1)/(P1*100);
printf('V1= %2.4f m^3/kg',V1);
printf('\n');

V2=V1/r;
printf('V2= %2.4f m^3/kg',V2);
printf('\n');

P2=P1*(r^G);
printf('P2= %2.1f bar',P2);
printf('\n');

T2=T1*(r^(G-1));
printf('T2= %2.1f K',T2);
printf('\n');

//For Process 2-3
Cv=0.718;
T3=(Qs/(Cv*m))+T2;
printf('T3= %2.1f K',T3);
printf('\n');

P3=P2;
printf('P3= %2.1f bar',P3);
printf('\n');

//As pressure is constant
V3=(T3/T2)*V2;
printf('V3= %2.4f m^3/kg',V3);
printf('\n');

//For process 3-4
V4=V1;
T4=T3*((V3/V4)^(G-1));
printf('T4= %2.1f K',T4);
printf('\n');

P4=P3*((V3/V4)^G);
printf('P4= %2.2f bar',P4);
printf('\n');

Cp=1.005;

W=((Cp)*(T3-T2))-((Cv*(T4-T1)));
printf('Work Done= %2.1f kJ/kg',W);
printf('\n');

Eff=100*(W/(Cp*(T3-T2)));
printf('Efficiency= %2.2f Percent',Eff);
printf('\n');

Pm=W/(V1-V2);
printf('Mean Effective Pressure= %2.2f kPa',Pm);
printf('\n');
