//calculate radial and tangential stress
clc
//solution
//given
di=200//mm
ri=100//mm
t=50//mm
p=5//N/mm^2
ro=ri+t//mm
//f=[p*(ri)^2]*[1+ro^2/x^2]*[1/(ro^2-ri^2)]
//x is radius at which stress is found out
//f=4*[1+(ro^2/(x^2))]//N/mm^2//tangential stress at distance x
f1=4*[1+(150^2/(100^2))]//N/mm^2
f2=4*[1+(150^2/(110^2))]//N/mm^2
f3=4*[1+(150^2/(120^2))]//N/mm^2
f4=4*[1+(150^2/(130^2))]//N/mm^2
f5=4*[1+(150^2/(140^2))]//N/mm^2
f6=4*[1+(150^2/(150^2))]//N/mm^2
//f=4*[1-(ro^2/(x^2))]//radial stress at distance x
r1=4*[1-(150^2/(100^2))]//N/mm^2
r2=4*[1-(150^2/(110^2))]//N/mm^2
r3=4*[1-(150^2/(120^2))]//N/mm^2
r4=4*[1-(150^2/(130^2))]//N/mm^2
r5=4*[1-(150^2/(140^2))]//N/mm^2
r6=4*[1-(150^2/(150^2))]//N/mm^2
printf("the tangential stress at distance x=100mm is,%f N/mm^2\n",f1)
printf("the tangential stress at distance x=110mm is,%f N/mm^2\n",f2)
printf("the tangential stress at distance x=120mm is,%f N/mm^2\n",f3)
printf("the tangential stress at distance x=130mm is,%f N/mm^2\n",f4)
printf("the tangential stress at distance x=140mm is,%f N/mm^2\n",f5)
printf("the tangential stress at distance x=150mm is,%f N/mm^2\n",f6)
printf("the radial stress at distance x=100mm is,%f N/mm^2\n ",r1)
printf("the radial stress at distance x=110mm is,%f N/mm^2\n ",r2)
printf("the radial stress at distance x=120mm is,%f N/mm^2\n ",r3)
printf("the radial stress at distance x=130mm is,%f N/mm^2\n ",r4)
printf("the radial stress at distance x=140mm is,%f N/mm^2\n ",r5)
printf("the radial stress at distance x=150mm is,%f N/mm^2\n ",r6)