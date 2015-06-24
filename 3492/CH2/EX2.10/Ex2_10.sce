clc
//Chapter2
//Ex_2.10
//Given
M_Au=197
w=0.1
M_Cu=63.55
p_exp=108 //n*ohm*m
X=M_Au*w/((1-w)*M_Cu+(w*M_Au))
C=450//n*ohm*m
p_Au=22.8 // resistivity in n*ohm*m
p=p_Au+C*X*(1-X) //Nordheim rule
x=((p-p_exp)/p)*100
disp(p,"resistivity of the alloy in n*ohm*m is")
disp(x,"The difference in the value from experimental value in % is")
