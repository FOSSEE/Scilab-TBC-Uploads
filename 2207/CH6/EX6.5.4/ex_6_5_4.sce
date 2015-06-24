//Example 6.5.4:average load voltage and rms load voltage
clc;
clear;
close;
//given data 
for i=1:10
    sr(i)=i;//
    d(1)=0;
    d(i+1)=d(i)+0.1;//
end
for i=1:11
    v=1;//
    vldc(i)=d(i)*v;//
    vlrms(i)=sqrt(d(i))*v;//
end
X = [sr];
Y = [d];
Z  = [vldc];
U= [vlrms];
disp(Z,"Vldc different values of average load voltage are in volts")
disp(U,"Vlrms diffent values of RMS load voltage are in volts")
plot(d,[vlrms vldc]);
xlabel("DUTY CYCLE D")
ylabel("Vldc & Vlrms Volts")
xtitle("Variation of Vldc and Vlrms with duty cycle D")
