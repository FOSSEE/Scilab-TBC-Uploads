clc
N = 100000 // annual output of parts
s = 2 // expected scrap
t = 105 // estimated time per part in s
ita = 80 // production efficiency of machine
a = 2300 // number of working hours
output = (3600*ita)/(t*100) // parts required per hour
pr = N*(100+s)/(a*100) // output from one machine per hour
mr = pr/output // machines required
printf("\n Number of machines required = %0.2f" , mr)
disp("If machine is to be used exclusively for part considered two machines required")
