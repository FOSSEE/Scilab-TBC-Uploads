//Example 14-11
clc;clear;
// Properties
rho_w=998;// kg/m^3
rho_R134=1226;// kg/m^3
// Given values
D_a=6;// Impeller diameter in cm
n=1725;// rpm
omega=180.6;// m^3/s
g=9.81// m/s^2
v_b=2400/10^6;// cm^3/s
H_b=450/100;// cm

// Calculation
v=[100 200 300 400 500 600 700];// cm^3/s
H=[180 185 175 170 150 95 54];// cm
n_pump=[32 54 70 79 81  66 38];// %
for(i=1:7)
    bhp(i)=((rho_w*g*v(i)*H(i))/(n_pump(i)/100))*(1/100)^4;// W
    C_Q(i)=((v(i))/(omega*D_a^3));// The capacity coefficient
    C_H(i)=((g*(H(i)/100))/(omega^2*(D_a/100)^2));// The head coefficient
    C_P(i)=((bhp(i))/(rho_w*omega^3*(D_a/100)^5));// The power coefficient
end
subplot(2,1,1);
plot(v,H,'r',v,n_pump,'b');
xlabel('Vdot,m^3/s');
ylabel('H,cm(or n,%)');
legend('H','n_pump')
a = gca(); 
a.y_location = "left"; 
a.filled = "on"; 
a.axes_visible = ["on","on","on"]; 
a.font_size = 1; 
b = newaxes(); 
b.y_location = "right"; 
b.filled = "off"; 
b.axes_visible = ["off","on","on"]; 
b.axes_bounds = a.axes_bounds; 
b.y_label.text = "bhp"; 
b.font_size = a.font_size;
plot(v,bhp,'g');
legend(['bhp'],"in_lower_right");
subplot(2,1,2);
xlabel('C_Q*100');
plot(C_Q*100,C_H*10,'b',C_Q*100,C_P*100,'g',C_Q*100,n_pump/100,'r');
legend('C_H*10','C_p*100','n_pump');
C_q=0.0112;
C_h=0.133;
C_p=0.00184;
n_pump=0.812;
D_b=(((v_b^2)*C_h)/(((C_q)^2)*g*H_b))^(1/4);// m
omega_b=(v_b)/((C_q*(D_b)^3));// rad/s
n=(omega_b*60)/(2*%pi);// rpm
bhp_b=C_p*rho_R134*omega_b^3*D_b^5;// W
printf('\nThe design diameter for pump B=%0.3f m \nThe design rotational speed for pump B=%0.0f rpm \nThe required brake horsepower for pump B=%0.0f W',D_b,n,bhp_b);
// The answer vary due to round off error
