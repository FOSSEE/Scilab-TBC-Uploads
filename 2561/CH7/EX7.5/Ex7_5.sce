//Ex7_5
clc
AM=50000
disp("AM="+string(AM)) // Midband gain 
fH=20*10^(3)
disp("fH= "+string(fH)+" Hz")// Upper cut-off frequency
fL=30
disp("fL= "+string(fL)+" Hz")// Lower cut-off frequency
B=5*10^(-5)
disp("B= "+string(B)) //Feedback factor
AMf=AM/(1+B*AM)
disp("AMf=AM/(1+B*AM)="+string(AMf)) // Midband gain with feedback
fHf=fH*(1+B*AM)
disp("fHf=fH*(1+B*AM)= "+string(fHf)+" Hz")//Upper cut-off frequency with feedback
fLf=fL/(1+B*AM)
disp("fLf=fL/(1+B*AM)= "+string(fLf)+" Hz")//Lower cut-off frequency with feedback
//NOTE: calculated value of AMf is AMf=14285.714  and fLF=8.5714286 but in book given as AMf=14286  and fLF=8.58 Hz
