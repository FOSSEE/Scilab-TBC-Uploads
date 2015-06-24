clc
c = 20000 // first cost of machine in Rs
s = 1000 // scrap value in machine in Rs
b = 180 // annual increase in cost of repairs in Rs
n = sqrt(2*(c-s)/b) // years
printf("\n Number of years of economic repair life = %0.2f years" , n)
