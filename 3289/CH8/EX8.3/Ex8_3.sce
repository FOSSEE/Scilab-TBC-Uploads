clc

a=0.15 //m
b=0.2 //m
c=0.25 //m
E=200*10^9 //Pa
delta=0.0001 //m
140 //MPa

p=((E*delta)/8)*(((b^2-a^2)*(c^2-b^2))/(2*(b^2)*(c^2-a^2)))
disp(p,"the contact pressure in Pa is= ") // textbook ans is wrong

p=12.3*10^6
sigmatheta=p*((b^2+c^2)/(c^2-b^2)) // where r=0.2
disp(sigmatheta,"tangential stresses in the outer cylinder in Pa is= ")
sigmatheta1=(2*p*b^2)/(c^2-b^2) // where r=0.25
disp(sigmatheta1,"tangential stresses in the outer cylinder in Pa is= ")
sigmatheta3=-(2*p*b^2)/(b^2-a^2) // where r=0.15
disp(sigmatheta3,"tangential stresses in the inner cylinder in Pa is= ")
sigmatheta4=-p*((b^2+a^2)/(b^2-a^2)) // where r=0.2
disp(sigmatheta4,"tangential stresses in the inner cylinder in Pa is= ")


