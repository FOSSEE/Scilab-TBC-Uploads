clc;
//page 115
//problem 2.13

//Given, Error probability is 10^-4 = P_e, no of ecperiments conducted = N = 4*10^5 & estimated probability of error p does not differ from P_e by more than 50%
P_e = 10^-4
N = 4*10^5

//Tchebycheff's inequality is P(|p-Pe|>=E)<=P_e/(N*E^2)
//From given values we can find that E = 50*10^-4
E = 50*10^-4

//Here R.H.S of Tchebycheff's inequality is denoted as Tc_RHS
Tc_RHS = P_e/(N*E^2)

//Tc_RHS in persentage is Tc_RHSper
Tc_RHSper = Tc_RHS/100

//disp(Tc_RHSper,Tc_RHS,'or P(|p-10^-4|>=0.5*10^-2)<=',Tc_RHS,'The probability of estimated probability of error p does not differ from P_e by more than 50% is less than equal to')

//given solution has been computed wrong, obtaines solution is 10^-7
disp('The probability of estimated probability of error p does not differ from P_e by more than 50% is less than equal to '+string(Tc_RHS)+'or P(|p-10^-4|>=0.5*10^-2)<='+string(Tc_RHS)+' = '+string(Tc_RHSper)+'%')
