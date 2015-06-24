h=6.62*10^-34;// planc's constant
c=3*10^8;// speed of light in vaccum
e=0.70;//efficiency 
Eg=0.75*1.6*10^-19;// Energy gap in volts
w=((h*c)/Eg);//wavelength in meters
R=((e/1248)*w);// in ampere per watt
disp (R , "Responsivity = ")
