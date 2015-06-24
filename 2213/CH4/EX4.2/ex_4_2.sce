//Example 4.2 //LUMES PER WATT AND MSCP
clc;
clear;
close;
format('v',4)
V=250;//in volts
I=0.8;//in amperes
F=3000;//intensity in lumens
wl=V*I;//wattage of lapms ins watts
lpw=F/wl;// lumens per watts is
MSCP=F/(4*%pi);// MSCP of the lamps
MW=MSCP/wl;//MSCP per watts
disp(lpw,"lumens per watt is")
disp(MW,"MSCP per watt of the lamp is")
