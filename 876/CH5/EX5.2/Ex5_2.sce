//caption:Find load current when varible load are(a)100 ohm(b)10 ohm
//Ex5.2
clc
clear
close
Zs=100//current source impedance(in ohm)
Zl1=100//load impedance(in ohm)
Zl2=10//load impedance(in ohm)
Is=10//current source value(in A)
Il1=(Is/(1+(Zl1/Zs)))
disp(Il1,'(a)load current when variable load is 100 ohm(in ohm)=')
Il2=(Is/(1+(Zl2/Zs)))
disp(Il2,'(b)load current when variable load is 10 ohm(in ohm)=')