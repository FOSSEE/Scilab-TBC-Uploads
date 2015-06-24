clear;
clc;

//Example 4.6
//Caption : Program to Find the Standard Heat of Methanol Synthesis

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=IDCPH(T0,T,dA,dB,dC,dD)
  t=T/T0;
  Q=(dA+((dB/2)*T0*(t+1))+((dC/3)*T0*T0*((t^2)+t+1))+(dD/(t*T0*T0)))*(T-T0)
  funcprot(0);
endfunction
    

//Methanol Synthesis @ 1073.15K(800`C)
//CO + 2H2 --> CH3OH
del_H_CO=-110.525//@298K from Table C.4
del_H_CH3OH_g=-200.660;//@298K from Table C.4
del_H_298=((1)*del_H_CH3OH_g)-((1)*del_H_CO);//KJ/mol
T0=298.15;
T=1073.15;
R=8.314;
//Moles (CH3OH,CO,H2)
n=[1;-1;-2];
//A..from Table C.1 
A=[2.211;3.376;3.249];
//B..from Table C.1
B=(10^-3)*[12.216;0.557;0.422];
//C..from Table C.1
C=(10^-6)*[-3.450;0;0];
//D..From table C.1
D=(10^5)*[0;-0.031;0.083];

del_A=0;
del_B=0;
del_C=0;
del_D=0;
for(i=1:3)
  del_A=del_A+n(i,1)*A(i,1);
  del_B=del_B+n(i,1)*B(i,1);
  del_C=del_C+n(i,1)*C(i,1);
  del_D=del_D+n(i,1)*D(i,1);
end

I=IDCPH(T0,T,del_A,del_B,del_C,del_D);
del_H=approx(del_H_298+(R*I/10^3),3);

disp('KJ',del_H,'Standard Heat Of Enthalpy');

//End
