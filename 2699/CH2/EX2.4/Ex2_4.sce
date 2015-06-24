//EX2_4 PG-2.23
clc
disp("Refer the Figure-2.25 shown")
disp("When forward resistance Rf is neglected  then")
disp("the diode behaves as a battery as shown in Figure-2.25(a)")
Vf=0.7;//cut-in voltage
V=10;//supply voltage
Rl=500;//load resistance
If=(V-Vf)/Rl;//applying KVL to the circuit
If=If*1e3
printf("\n Forward current is %.2f mA\n",If)
disp("When forward resistance is Rf is 3.2 Ohm then")
disp("the equivalent circuit is as shown in fig-2.25(b)")
Rf=3.2;
If=(V-Vf)/(Rl+Rf);//applying KVL to the circuit
If=If*1e3
printf("\n therefore Forward current is %.4f mA",If)
