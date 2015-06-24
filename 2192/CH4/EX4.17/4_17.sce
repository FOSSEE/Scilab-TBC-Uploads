clc,clear
printf('Example 4.17\n\n')

m=10*1000 //10 tonnes of steel
S=444//specific heat of steel
L=37.25*1000 //latent heat of fusion of steel
T2=1370;T1=20//final and initial temperatures

Energy=(m*S*(T2-T1) + m*L)  / 3600 //energy required to melt 10 tonne steel in Wh
efficiency= 50/100
time_taken = 2 //time taken in melting of heat in hours
average_output = Energy/time_taken
average_input= average_output/ efficiency
printf('Average input to furnace = %.1f kW\n',average_input/1000)

current_input=9000
resistance= 0.003 //resistance of furnace leads including transformer
reactance= 0.005  //reactance of furnace leads including transformer
V1= current_input*resistance //voltage drop due to resistance
V2= current_input*reactance //voltage drop due to reactance

//Solving for V_A (arc voltage)
//V_opencircuit= sqrt((V_A=V1)^2+ V2^2)
//cos_phi=  V_A+27 / sqrt((V_A-V1)^2+ V2^2)
//Input power = 3*current_input* V_opencircuit *cos_phi

V_A= average_input/ (3*current_input)   -27
printf('Arc voltage = %.1f V\n',V_A)
V_opencircuit= sqrt((V_A-V1)^2+ V2^2)
total_VA=3*current_input* V_opencircuit
printf('Total kVA taken from supply = %.0f kVA',total_VA/1000)

printf('\n\nAnswers mimatch because 27 volts was left unconsidered in last 2 steps')
