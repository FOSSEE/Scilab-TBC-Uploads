// scilab Code Exa 12.5 Radially tipped blade impeller
// part(a) free vortex flow
r3=0.25; // volute base circle radius in m
c_theta3=177.5; // tangential velocity component of air in m/s
K=r3*c_theta3;
b=0.12; // width in m
Q=5.4; // discharge in m3/s
n=8;
disp("part(a)")
theta(1)=%pi/4;
theta(2)=%pi/2;
theta(3)=3*%pi/4;
theta(4)=%pi;
theta(5)=5*%pi/4;
theta(6)=3*%pi/2;
theta(7)=7*%pi/4;
theta(8)=2*%pi;
disp("the volute radii at eight angular positions are given below:")
for i=1:n
    r4(i)=r3*exp(theta(i)*Q/(2*%pi*K*b))
    disp("radian",theta(i),"at theta=")
    disp("cm",r4(i)*100,"r4=")
end
L=r4(8)-r3;
disp(L/(2*r3),"(a)throat-to-diameter ratio (L/d3)=")

// part(b) constant mean velocity of 145 m/s
cm=145; // constant mean velocity in m/s
disp("part(b)")
for i=1:n
    r4b(i)=r3+(Q/(cm*b)*(theta(i)/(2*%pi)));
    disp("radian",theta(i),"at theta=")
    disp("cm",r4b(i)*100,"r4=")
end
L_b=r4b(8)-r3;
disp(L_b/(2*r3),"(b)throat-to-diameter ratio (L/d3)=")
