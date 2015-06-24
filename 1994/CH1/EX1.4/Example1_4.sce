//Chapter-1,Example1_4,pg 1_20
A=50
T=2
function E=f(t),E=(50*t)^2,endfunction//e=At(ramp function)
exact=-2.5432596188;
I=intg(0,T,f)
abs(exact-I)
Erms=sqrt((1/T)*I)
function e=f1(t),e=50*t,//e=At(ramp function)
endfunction
exact=-2.5432596188;
I1=intg(0,T,f)
Eav=(1/T)*I1
Kf=Erms/Eav
kf1=0.961//Kf(sine)/Kf(sawtooth)
pere=(1-kf1)/1*100//percentage error
printf("percentage error ")
printf("pere=%.2f ",pere)
