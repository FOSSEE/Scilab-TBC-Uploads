// Example 3.7.4:Vldc,FPF and PF
clc;
clear;
close;
format('v',4)
disp("part (a)")
vm=1;//assume
alpha=[0;30;60;90;120;150;180];//in degree
for i=1:7
    vldc(i)=(vm/%pi)*(1+cosd(alpha(i)));//
    disp("average load voltage (Vldc) for angle "+string(alpha(i))+" degree is Vm*"+string(vldc(i))+" ")
end
subplot (2,2,1)
plot2d(alpha,vldc);//
xlabel("alpha(degrees)")
ylabel("average voltage (Vldc)")
xtitle("(a) Variation of Vldc Vs alpha")
disp("part (b)")
format('v',6)
vm=1;//assume
alpha=[0;30;60;90;120;150;180];//in degree
for i=1:7
     FPF(i)=cosd((alpha(i))/2)
     disp("displavefactor or fundamental power factor (FPF) for fringle angle "+string(alpha(i))+" degree is "+string(FPF(i))+" ")
end
subplot (2,2,2)
plot2d(alpha,FPF);//
xlabel("alpha(degrees)")
ylabel("FPF")
xtitle("(b) Variation of FPF Vs alpha")
disp("part (c)")
vm=1;//assume
alpha1=[0;30;60;90;120;150;180];//
alpha=[0;%pi/6;%pi/3;%pi/2;(2*%pi)/3;(5*%pi)/6;%pi];//in degree
for i=1:6           
    
     PF(i)=(sqrt(2)*(1+cos(alpha(i))))/sqrt((%pi)*(%pi-alpha(i))) ;
     PF(7)=0;//
     disp("displavefactor or fundamental power factor (FPF) for fringle angle "+string(alpha1(i))+" degree is "+string(PF(i))+" ")
end
subplot (2,2,3)
plot2d(alpha1,PF);//
xlabel("alpha(degrees)")
ylabel("FPF")
xtitle("(c) Variation of PF Vs alpha")
