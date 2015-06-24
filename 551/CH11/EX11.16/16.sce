clc
// C8H18+12.5*O2+12.5*(79/21)N2 --> 8CO2+9H2O+12.5*(79/21)*N2

// C8H18 + (2) (12.5) O2 + (2) (12.5)*(79/21)N2-->8CO2 + 9H2O + (1) (12.5) O2 + (2) (12.5)*(79/21)*N2

m_fuel=1*(8*12+1*18);
m_air=2*12.5*(1+79/21)*28.97;

disp("(i) Air-fuel ratio =")
AF=m_air/m_fuel;
disp(AF)

disp("(ii) Dew point of the products")
n=8+9+12.5+2*12.5*(79/21);

x=9/n;
p=100*x;

//Hence
t_dp=39.7; //0C

disp("t_dp=")
disp(t_dp)
disp("°C")