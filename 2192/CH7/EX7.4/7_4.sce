clc,clear
printf('Example 7.4')

D=8.6 //density of nickel in gram/cm^3
Z= 0.000304 //Electrochemical equivalent of silver in gram/coulomb
I=4.3 //steady current passed in amperes

//Volume=length*breadth*height
V_initial =5*4*1 //volume before electroplating
V_final= 5.02*4.02*1.02 //volume after electroplating
V_nickel=V_final-V_initial //volume of nickel deposited

W= V_nickel * D  //weight of nickel deposited
T = (W/(I*Z))/3600  //Time taken in hours

printf('Time taken for deposition = %.0f seconds\n\n',3600*T)
printf('=%.0f hours %.0f minutes %.0f seconds',T,(T-1)*60,((T-1)*60 - 4)*60)

printf('\n\nAnswer may not match because of calculation mistake done in seconds to <hours,minute,second> conversion')
