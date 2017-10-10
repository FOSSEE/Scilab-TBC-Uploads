clear
//
//case 1
//2300 winding used as secondary
//given and derived
st=150
v1=13800
v2=2300
a=(v1-v2)/v2
b=a+1
sat=(6*150)/5
printf("\n sat= %0.1f  Kva",sat)
//case 2
v1=13.8
v2=11.5
a=(v1-v2)/v2
sat=((1+a)/a)*150
printf("\n sat= %0.1f  kva",sat)
