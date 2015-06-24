// Example 7.6 page no-405
clear
clc

Vs=150
A=10000
V0=A*Vs

Afb=10000/80

B=((A/Afb)-1)/A
printf("Beta =%.4f\n",B)

Vs2=130
A2=8000
V02=A2*Vs
Afb2=A2/(1+(B*A2))
sg=(A-A2)*100/A
sgf=(Afb-Afb2)*100/Afb
printf("%% stability of gain without feedback=%.0f%%\n%% stability of gain with feedback=%f%%\n Therefore, with neative feedbaclk stability is improved.",sg,sgf)
