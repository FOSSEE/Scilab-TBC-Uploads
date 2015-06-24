clear
clc

G=[100 11 .2]
T=[100 11 132 .05]
L=[
1.2e-3 100
1e-3 50
1e-3 50
]
B=[100 11]
T(5)= T(3)/T(2)
B(3)=B(2)* T(5)
B(4)=B(3)^2/B(1)
for(i=1:3)
    L(i,3)= 2*%pi*50* L(i,1)* L(i,2);
    L(i,4)= L(i,3)/B(4)
end
l=L(:,4)
X1=l(1)*l(2)/(l(1)+l(2)+l(3))
X2=l(3)*l(2)/(l(1)+l(2)+l(3))
X3=l(1)*l(3)/(l(1)+l(2)+l(3))
X=(((G(3)+T(4)+(X1))^-1) +  ((G(3)+T(4)+(X3))^-1))^-1 +X2
SF=round(10/X)/10
S=SF* B(1)
IF=round(10/X)/10
I=IF*B(1)*1e6/(sqrt(3)*B(3)*1e3)
mprintf("Fault level = %.0f MVA, Fault current %.1f A", S,I)
