// Example 8.6, Page No-377
clear
clc

ILmax=0.5

//Part 1
Rsc=0.7/ILmax
printf('Rsc= %.1f ohm', Rsc)

//Part 2
RL=100
Vo=20
IL=Vo/RL
printf('\nIL= %.1f A', IL)

//Part 3
RLn=10
IL=Vo/RLn
printf('\nIL= %.1f A', IL)
printf('\nSince IL > ILmax of 0.5A, current limiting will happen')
Von=RLn*ILmax
printf('\nVo= %.1f V', Von)
