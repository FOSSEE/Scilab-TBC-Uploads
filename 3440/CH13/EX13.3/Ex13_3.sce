clc

c=750//nm/min
l=812//nm/min
r=765//nm/min
t=743//nm/min
b=798//nm/min
Al=(c+l+r+t+b)/5
disp(Al,"Al average etch rate in nm/min is= ")
Er=[(l-t)/(l+t)]*100
disp(Er,"Etch rate uniformly in % is= ")
