// Example 3.7.1:device ratings
clc;
clear;
close;
Io=25;//in amperes
Vsrms=120;// in colts
Vm=sqrt(2)*Vsrms;// in volts
for i= 1:5
    alpha=[0;60;90;135;180]
    Vldc(i)=((Vm)/%pi)*(1+cosd(alpha(i,1)));//
    disp(round((Vldc(i))),"mean voltage in volts is at angle "+string(alpha(i,1))+" degree")
end
PIV=Vm;//peak inverse voltage
Iascr=Io/2;//scr average currentin ampere
Iadod=Io;//average diode current in amperes
Ipscr=Iascr;//peak current rating for SCR in amperes
Ipdod=Iadod;//peak current rating for diode in amperes
disp(Iascr,"scr average current in amperes")
disp(Iadod,"average diode current in amperes")
disp(Ipscr,"peak current rating for SCR in amperes")
disp(Ipdod,"peak current rating for diode in amperes")
