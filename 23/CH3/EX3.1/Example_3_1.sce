clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 3.1
//Caption : Program to Find Volume Change and Pressure generated for Acetone

//Given Values for Acetone
P1=1;//Pressure=1Bar
T1=20;//Temp=293.15K(20`C)
Beta=1.487*10^(-3);//vol expansivity(K^-1)
k=62*10^(-6);//isothermal compressibility(bar^-1)
V1=1.287*10^(-3);//Volume(m^3 kg^-1)

//Solution
//(a)
//Find (dP/dT)v??
//Using eq.(3.4),V constant hence dV=0
ans_a=round(Beta/k);
disp('K^-1',ans_a,'(a)The value of (dp/dT)v is ')

//(b)
//Find Pressure when acetone heated at const. Vol from T1(1bar) to T2.
T2_b=30;//Temp2=303.15K(30`C)
del_P=ans_a*(T2_b-T1);
ans_b=P1+del_P;
disp('bar',ans_b,'(b)The pressure is ')

//(c)
//Find vol. change when acetone changed from T1(P1) to T2(P2)
T2_c=0;//Temp2=273.15K(0`C)
P2=10;//pressure=10bar
//solve using Eq. (3.5)
ln_value=(Beta*(T2_c-T1))-(k*(P2-P1));//ln(V2/V1)
ratio=exp(ln_value);//taking antilog,V2/V1
V2=ratio*V1;
del_V=approx(V2-V1,6)
disp('(X 10^-3) m^3 kg^-1',del_V*1000,'(c)The change in Volume is ') 

//End