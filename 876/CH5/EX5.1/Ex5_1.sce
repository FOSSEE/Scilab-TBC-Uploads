//caption:Find terminal voltage when load impedance is(a)10 ohm(b)20 ohm(c)40 ohm
//Ex5.1
clc
clear
close
Vs=5//source voltage(in V)
Zi=10//internal imedance of load(in ohm)
Z1=10//load impedance(in ohm)
Z2=20//load impedance(in ohm)
Z3=40//load impedance(in ohm)
Vt1=(Vs/(Zi+Z1))*Z1
disp(Vt1,'(a)internal voltage at load impedance 10 ohm(in ohm)=')
Vt2=(Vs/(Zi+Z2))*Z2
disp(Vt2,'(b)internal voltage at load impedance 20 ohm(in ohm)=')
Vt3=(Vs/(Zi+Z3))*Z3
disp(Vt3,'(c)internal voltage at load impedance 40 ohm(in ohm)=')