clc 
//initialisation of variables
sm= 13.6
so= 0.9
sw=1
ha= 12.7 //ft
hb= 8 //ft
hc= 7.5 //ft
hd= 1.75 //ft
//CALCULATIONS
pa= (sm-so)*sw
pc= -hb*so+ha
pd= ha+so*2-sm*2.5-hc
pb= hb+hd+pd
//RESULTS
printf ('pressure at A= %.2f ft of water ',pa)
printf ('\n pressure at B= %.2f ft of water ',pb)
printf ('\n pressure at C= %.2f ft of water ',pc)
printf ('\n pressure at D= %.2f ft of water ',pd)
