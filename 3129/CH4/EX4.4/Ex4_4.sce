//Finding the Case Temperature of a BJT
//Example 4.4(Page No- 137) 
clc
clear
//given data
Tj = 150;//degree C
Ta = 25;//degree C
Rjc = 0.4;//degree C/W
Rcs = 0.1;//degreeC/W
Rsa = 0.5;//degreeC/W

//part(a)
Pt = (Tj -Ta)/(Rjc+Rcs+Rsa);
printf('(a)\t Maximum Power dissipation :%d W',Pt);

//part(b)
Tc = Tj -(Pt*Rjc)
printf('\n (b)\t The case Temperature : %d degreeC',Tc);
