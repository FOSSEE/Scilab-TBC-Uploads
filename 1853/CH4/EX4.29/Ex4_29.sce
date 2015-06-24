
//determine the frequency
R=30;//ohms
L=0.5;//henry
f=50;//hertz
X=(2*%pi*f*L)
Z=R+%i*X
V=86.6+%i*50
I=V/Z
disp('current  = '+string(I)+ 'A')
