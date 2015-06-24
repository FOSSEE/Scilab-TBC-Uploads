disp('chapter 2 ex2.1')
disp('given')
disp("voltage gain is 50")
Av=50 
disp("typicalCMRR=90db")
disp("common mode input=100mv")
Vicm=.1
CMRR=10^(90/20)
Vo=(Vicm*Av)/CMRR
disp("output voltage is")
disp('volt',Vo)