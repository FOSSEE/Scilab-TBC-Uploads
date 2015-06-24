
//calculate power factor
W1=5000//W1=V*L*cos(30+o)
W2=3000//W2=V*L*cos(30-o)
o=atand (1.732*(W1-W2)/(W1+W2))
disp('power factor='+string(o)+'  ')
