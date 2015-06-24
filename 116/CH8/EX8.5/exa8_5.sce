  
//Caption:Program to determine the system gain
 
//Example 8.5
 
//Page 405
 
//Refer to table 8.2 and figure 8.8 on page 394
 
dr=565//data rate

wl=1550*10^-9//wavelength

disp('The use of 5B6B line code implies the line data rate is,')

565*(6/5)

//678Mbps
 
disp('The receiver sensitivity for 678 Mbps is determined from fig 8.8 or table 8.2 as ')
 
rsen=-34.5

A=(-5-rsen)//system gain 
 
BDP=[500/(17*0.4)]

BDPs=[73.6/0.678]
 
lossp=(0.2+0.2)*(65)
 
lossm=A-lossp
 
//Result
 
//System gain = 29.5 dB
 
//BDP = 73.6 Gbps
 
//BDP spacing = 109 km
 
//Path Loss = 26 dB
 
//Loss Margin = 3.5 dB
 