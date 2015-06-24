// calculate the output voltage for different values of K
clc;
ei=100;
K=0.25;
disp('When K=0.25')
eo=[(K/6)/(1+(K/6))]*ei;
disp(eo,'output voltage (V)= ')
K=0.5;
disp('When K=0.5')
eo=[(K/6)/(1+(K/6))]*ei;
disp(eo,'output voltage (V)= ')
K=0.6;
disp('When K=0.6')
eo=[(K/6)/(1+(K/6))]*ei;
disp(eo,'output voltage (V)= ')
K=0.8;
disp('When K=0.8')
eo=[(K/6)/(1+(K/6))]*ei;
disp(eo,'output voltage (V)= ')