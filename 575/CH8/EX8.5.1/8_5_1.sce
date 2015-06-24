clc
pathname=get_absolute_file_path('8_5_1.sce')
filename=pathname+filesep()+'851.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
nHCl=mdot*x*10^3 /M1
nH2O=mdot*(1-x)*10^3 /M2
function[Cp1]=fun(T)
    Cp1=29.13*10^(-3) - T*0.1341*10^(-5) +T^2 *0.9715*10^(-8) - T^3 *4.335*10^(-12)
endfunction
H1=intg(T1,T2,fun)  //intg is an inbult function used for definite integration
disp(H1)
r=nH2O/nHCl
disp("From table B.11, deltaHa= -67.4 Kj/mol HCl")
deltaHa= -67.4
y=nHCl/(nHCl+nH2O)
Cp=0.73*mdot*4.184/nHCl
deltaHb=Cp*(T3-T1)
H2=deltaHa+deltaHb
Qdot=nHCl*(H2-H1)
printf("Heat =%E kj/h",Qdot)