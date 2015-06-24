clc
clear
//DATA GIVEN
p1=4*10^5;                      //initial pressure in N/m^2
V1=0.2;                         //initial volume in m^3
T1=130+273;                     //initial temperature in K
p2=1.02*10^5;                   //final pressure after adiabatic expansion in N/m^2
Q23=72.5;                       //increase in enthalpy during constant pressure process in kJ
Cp=1;                           //in kJ/kgK
Cv=0.714;                       //in kJ/khK

//gamma for air, g
g=Cp/Cv;
R=(Cp-Cv)*1000;

//for reversible adiabatic process 1-2
//p1*(V1^g)=p2*(V2^g)
V2=V1*(p1/p2)^(1/g);            //final volume in m^3
//(T2/T1)=(p2/p1)^((g-1)/g);
T2=T1*(p2/p1)^((g-1)/g);;       //final temp. T2 in K

m=p1*V1/R/T1;                   //mass in kg

//for constant pressure process 2-3
//Q23=m*Cp*(T3-T2);
T3=Q23/m/Cp+T2;
//V2/T2=V3/T3
V3=V2/T2*T3;

//Work done by the path 1-2-3, W123=W12+W23
W12=(p1*V1-p2*V2)/(g-1);
W23=p2*(V3-V2);
W123=W12+W23;

//if the above processes are replaced by a single reversible polytropic process giving the same work between initial and final states,
//W13=W123=(p1V1-p3V3)/(n-1)
p3=p2;
n=1+(p1*V1-p3*V3)/W123;         //index of expansion, n

printf(' (i) The Total Work done is: %5.0f Nm or J. \n',W123);
printf(' (ii) The value of index of expansion, n is: %1.3f. \n',n);

//NOTE:
//there is slight variation in answers of the book due to rounding off of the values 
