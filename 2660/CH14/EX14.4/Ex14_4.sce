clc
v = 30 // cutting speed in m/min
feed = 0.3 // feed rate in mm/rev.
d = 2.5 // depth of cut in mm
t = 60 // tool life in min.
c = v*t^0.13*feed^0.77*d^0.37 // constant
printf("\n constant = %0.2f " , c)
v2 = v*1.2 // cutting speed in m/min 
t2 = (c/(v2*feed^0.77*d^0.37)) // tool life when cutting speed increased by 20% in min.
t2 = t2^(1/0.13)
f2 = feed*1.2 // feed rate in mm/rev.
t3 = (c/(v*d^0.37*f2^0.77)) // tool life when feed rate increased by 20% in min.
t3 = t3^(1/0.13)
d2 = d*1.2 // depth of cut in mm
t4 = (c/(v*feed^0.77*d2^0.37)) // tool life when depth of cut increased by 20% in min.
t4 = t4^(1/0.13)
t5 = (c/(v2*d2^0.37*f2^0.77)) // tool lfe in min.
t5 = t5^(1/0.13)
printf("\n Tool life when cutting speed increased by 20 = %0.2f min." , t2)
printf("\n Tool life when feed rate increased by 20 = %0.2f min." , t3)
printf("\n Tool life when depth of cut increased by 20 = %0.2f min." , t4)
printf("\n Tool life when all taken together after increasing by 20 = %0.2f min." , t5)
// 'Answers vary due to round off error'
