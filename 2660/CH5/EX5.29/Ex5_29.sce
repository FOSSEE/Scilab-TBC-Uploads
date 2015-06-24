clc
fc1 = 100000 // fixed cost in Rs
vc1 = 100 // variable cost in Rs per unit
sp = 200 // selling price in Rs per unit
q1 = fc1/(sp-vc1) // quantity of production at break even point
fc2 = 125000 // fixed cost in Rs
vc2 = 90 // variable cost in Rs per unit
q2 = fc2/(sp-vc2) // quantity of production at break even point
p = 20000 // profit in Rs
q3 = (fc1 + p)/(sp-vc1) // quantity of production at profit of Rs 20000
printf("\n Break even point = %d pieces \n If fixed cost is 125000 and variable cost is Rs 90 per unit then break even point = %d pieces\n Number of components to get profit of Rs 20000 = %d pieces" , q1 , q2 ,q3)
