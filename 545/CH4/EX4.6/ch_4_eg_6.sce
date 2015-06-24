clc
disp("the soln of eg 4.6-->Pneumatic Conveying")
dia=3*10^-4                             //given data
v_sprfcl=12
rho_p=900
meu=1.8*10^-5
P=101325
T=298.15
R=8.314
M=28.84*10^-3
rho_air=P*M/(R*T)
proj_A=%pi*(dia^2)/4
volm=%pi*(dia^3)/6
t1=rho_air*proj_A/(volm*rho_p)                        //terms of the function
t2=((rho_air/rho_p)-1)*9.81*2
y=0
for z=.01:.01:10,
    h=.01
    vn1=sqrt(y)
    Re=rho_air*(12-vn1)*dia/meu
    Cd=24*(1+.15*Re^.687)/Re
    function dy_by_dz=fy(z,y),
    dy_by_dz=t1*Cd*(12-sqrt(y))^2+t2,
endfunction
    kk1=h*fy(z,y)
    kk2=h*fy(z+h/2,y+kk1/2)
    kk3=h*fy(z+h/2,y+kk2/2)
    kk4=h*fy(z+h,y+kk3)
    y=y+(kk1+2*kk2+2*kk3+kk4)/6
    end
v=sqrt(y)                    //final value of velocity
disp(v,"the value of v at the end of the pneumatic conveyor is");