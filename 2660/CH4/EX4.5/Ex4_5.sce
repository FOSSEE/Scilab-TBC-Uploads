clc
mp = 6000 // market price of machine in Rs
d = 0.2*mp // discount in Rs
sp = mp - d // selling price of factory in Rs
mc = 400 // material cost in Rs
lc = 1600 // labour cost in Rs
fo = 800 // factory overheads in Rs
F = mc + lc + fo // factory cost in Rs
se = 0.5*F // selling expenses in Rs
profit = sp - (F + se ) // Rs
printf("\n profit =  Rs %d" , profit)
