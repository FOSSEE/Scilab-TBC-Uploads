// scilab Code Exa 11.7 flow and loading coefficients 
u=339.29; // in m/s
cx=180; // Axial velocity in m/s
alpha_1m=25;  //  air angle at rotor and stator exit
phi(1)=0.2;
phi(2)=0.4;
phi(3)=cx/u;
phi(4)=0.6;
phi(5)=0.8;
n=5;
for i=1:n
    shi(i)=1-phi(i)*(2*tand(alpha_1m));
    disp(phi(i),"when flow coefficient phi=")
    disp(shi(i),"then loading coefficient shi=")
end

