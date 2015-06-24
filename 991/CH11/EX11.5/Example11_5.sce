//Example 11.5
clc
format(6)
gm=1/26 //mho
x1=gm*10^3  //m-mho
disp(x1,"  gm(m-mho) = IC(mA)/26mV = 1/26 =")
rbe=224/(38.46*10^-3)
x2=rbe*10^-3 //k-ohm
disp(x2,"  rb''e(k-ohm) = hfe / gm =")
rbb=6000-5824 //ohm
disp(rbb,"  rbb''(ohm) = hie - rb''e = 6000-5824 =")
cbe=((38.46*10^-3)/(2*%pi*(80*10^6)))-(12*10^-12) // farad
x3=cbe*10^12 //pF
format(5)
disp(x3,"  cb''e(pF) = gm/2*pi*fT - Cb''c =")