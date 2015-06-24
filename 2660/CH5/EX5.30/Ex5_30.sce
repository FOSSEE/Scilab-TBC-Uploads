clc
fc1 = 12000 // fixed cost for machine A in Rs
fc2 = 48000 // fixed cost for machine B in Rs
n1 = 6 // unit production cost in Rs per piece for machine A
n2 = 1.2 // unit production cost in Rs per piece for machine B
q = (fc2-fc1)/(n1-n2) // break even point
printf("\n Break even point = %d pieces" , q)
