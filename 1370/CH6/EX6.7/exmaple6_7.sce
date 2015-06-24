//example6.7
clc
disp("The arrangement is shown in the Fig 6.18(a)")
disp("The voltmeter range = 50 V")
r=100*50
disp(r,"Therefore, (R_m)[in ohm] = Voltmeter resistance = 100 ohm/V * 50 =")
disp("This appears in parallel with 55 ohm resistor as shown in the Fig.6.18(b)")
r=(55*5000)/(55+5000)
format(9)
disp(r,"Therefore, R'' (in ohm)= 55||5000 = (55*5000)/(55+5000)= ")
i=80/(105+54.40158)
format(8)
disp(i,"Therefore, I(in A)=80/(105+R'')=")
v=0.501877*54.40158
disp(v,"Therefore, Voltage across R''(in V)=[I*R'']=0.501877*54.40158=")
disp("The  voltmeter will sense this voltage.")
disp("Therefore, Voltage indicated = 27.3029 V")
