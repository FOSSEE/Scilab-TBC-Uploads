disp('chapter 1 ex1.2')
disp('given')
disp("R2=8.2Kohms,R3=150ohms")//given Resistor values
R2=8200
R3=150
Av=(R2+R3)/R3//voltage gain formula
disp("voltage gain for given resistor values" )
disp(Av)
disp("New voltage gain given=75")//voltage gain=75
Av=75
R3=R2/(Av-1)//calculation of R3
disp("New value of resistor R3")
disp('ohms',R3)