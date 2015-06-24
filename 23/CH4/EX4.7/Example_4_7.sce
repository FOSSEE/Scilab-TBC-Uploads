clear;
clc;

//Example 4.7
//Caption : Program To Find Max Temperature reached in Combustion of Methane

function[Q]=MCPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))
  funcprot(0);
endfunction
    

//Combustion Of methane
//CH4 + 2O2 --> CO2 + 2H2O
R=8.314;
del_H_CO2=-393509;//from table C.4
del_H_O2=-241818;//from table C.4
del_H_CH4=-74520;//from table C.4
del_H_298=del_H_CO2+(2*del_H_O2)-del_H_CH4;
del_Hp=-del_H_298;
//moles of reactants
n_CH4=1;
n_O2=2+(0.2*2);//20% Excess
n_N2=n_O2*(79/21);
//Moles Of Products..(CO2,H2O,O2,N2)
np=[1;2;0.4;9.03];
//A..from Table C.1 
A=[5.457;3.470;3.639;3.280];
//B..from Table C.1
B=(10^-3)*[1.045;1.450;0.506;0.593];
//C..from Table C.1
C=(10^-6)*[0;0;0;0];
//D..From table C.1
D=(10^5)*[-1.157;0.121;-0.227;0.040];

E_A=0;
E_B=0;
E_C=0;
E_D=0;
for(i=1:4)
  E_A=E_A+np(i,1)*A(i,1);
  E_B=E_B+np(i,1)*B(i,1);
  E_C=E_C+np(i,1)*C(i,1);
  E_D=E_D+np(i,1)*D(i,1);
end

T0=298.15;
a=round(T0);//Initial
i=-1
while (i==-1)
  b=R*MCPH(T0,a,E_A,E_B,E_C,E_D);
  c=b*(a-T0);
  flag=del_Hp-c;
  if(flag<=100) then
    T=a-1;
    i=1;
  else
    a=a+1; 
    i=-1;
  end  
end
disp('K',T,'Temperature Required(Approx)')
//End