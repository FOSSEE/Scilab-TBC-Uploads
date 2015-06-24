clc
pathname=get_absolute_file_path('5_3_2.sce')
filename=pathname+filesep()+'532.sci'
exec(filename)
printf("All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Vcap=V/n
a=0.42747*(R*Tc)^2 /Pc
b=0.08664*R*Tc/Pc
m=0.48508+ 1.5171*w -0.1561*w*w
Tr=T/Tc
alpha=(1+ m*(1-sqrt(Tr)))^2
P=(R*T/(Vcap-b))-(alpha*a/(Vcap*(Vcap+b)))
printf(" \n Pressure of gas calculated using SRK equation= %f atm",P)