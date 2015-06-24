
clc
clear
//Input data
r=16;//The compression ratio 
l=6;//The cut-off of the stroke in percent
p3=70;//The maximum pressure obtained in bar
p1=1;//The pressure at the beginning of compression in bar
T1=(100+273);//The temperature at the beginning of compression in K
R=0.287;//Gas constant in kJ/kgK
g=1.4;//Assume the isentropic index 

//Calculations
T2=T1*(r)^(g-1);//The temperature at point 2 in K
function y=f1(x),y=(0.716+(125*10^-6)*x),endfunction
I=intg(373,1131,list(f1));//Integrating the above function
abs(I)
Cv=(1/(1131-373))*I;//The specific heat at constant volume for the temp range T2 and T3 in kJ/kgK
Cp=Cv+R;//The specific heat at constant pressure in kJ/kgK
g1=Cp/Cv;//The ratio of specific heats 
T21=T1*(r)^(g1-1);//The temperature at point 2 in K
function y=f1(x),y=(0.716+(125*10^-6)*x),endfunction
I1=intg(373,995,list(f1));//Integrating the above function
abs(I1)
Cv1=(1/(995-373))*I1;//The specific heat at constant volume for the temp range T2 and T3 in kJ/kgK
Cp1=Cv1+R;//The specific heat at constant pressure in kJ/kgK
g2=Cp1/Cv1;//The ratio of specific heats
T22=T1*(r)^(g2-1);//The temperature at point 2 in K
p2=(T22/T1)*r*p1;//The pressure at point 2 in bar
T3=(p3/p2)*T22;//The temperature at point 3 in K
V=[(l/100)*(r-1)]+1;//The ratio of volumes at 3-4 points
T4=(V)*T3;//The temperature at point 4 in K
p4=p3;//The pressure at point 4 in bar
g3=1.3;//Assume isentropic index
V5=r/V;//The ratio of volumes at 4-5 process 
T5=T4*(1/V5)^(g3-1);//The temperature at point 5 in K
Cv2=[[0.716*(T5-T4)]+[62.5*10^-6*(T5^2-T4^2)]]/(T5-T4);//The specific heat at constant volume for the temp range T5 and T4 in kJ/kgK
Cp2=Cv2+R;//The specific heat at constant pressure in kJ/kgK
g4=Cp2/Cv2;//The ratio of specific heats 
T51=T4*(1/V5)^(g4-1);//The temperature at point 5 in K
Cv3=[[0.716*(T51-T4)]+[62.5*10^-6*(T51^2-T4^2)]]/(T51-T4);//The specific heat at constant volume for the temp range T5 and T4 in kJ/kgK
Cp3=Cv3+R;//The specific heat at constant pressure in kJ/kgK
g5=Cp3/Cv3;//The isentropic index
T52=T4*(1/V5)^(g5-1);//The temperature at point 5 in K
p5=(T52/T1)*p1;//The pressure at point 5 in bar

//Output
printf('The pressure and temperature at all points of the cycle \n at point 2 , Temperature T2 = %3.0f K    and Pressure P2 = %3.2f bar \n at point 3 , Temperature T3 = %3.0f K    and Pressure P3 = %3.0f bar \n at point 4 , Temperature T4 = %3.0f K    and Pressure P4 = %3.0f bar \n at point 5 ,Temperature T5 = %3.0f K    and Pressure P5 = %3.2f bar ',T22,p2,T3,p3,T4,p4,T52,p5)










