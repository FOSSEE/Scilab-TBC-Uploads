clc
disp("the soln of eg 3.9-->Chemical Reaction Equilibrium-2 Simultaneous Reactions")
//let x1 and x2 be the reaction co-ordinate for 1st and 2nd reactions
x1new=.9, x2new=.6,r1=1,r2=1               //assumed values
Kp=1             //since P=1 atm
K1=.574, K2=2.21               //given
Kye1=K1, Kye2=K2               //at eqm.
while r1>1e-6 & r2>1e-6, x1=x1new,x2=x2new, 
m_CH4=1-x1,m_H2O=5-x1-x2,m_CO=x1-x2,m_H2=3*x1+x2,m_CO2=x2      //moles of reactants and products at eqm.
total=m_CO2+m_H2+m_CO+m_H2O+m_CH4
Ky1=m_CO*m_H2^3/(m_CH4*m_H2O*total^2)
Ky2=m_CO2*m_H2/(m_CO*m_H2O)
    f1=Ky1-.574                             //1st function in x1 and x2
    f2=Ky2-2.21                             //2nd function in x1 and x2
    d3=((3*x1+x2)^2*(12*x1-8*x2))/((1-x1)*(5-x1-x2)*(6+2*x1)^2)
    d4=(3*x1+x2)^3*(x1-x2)*(8*x1^2+6*x1*x2-24*x1+2*x2-16)
    d5=((1-x1)^2)*((5-x1-x2)^2)*((6+2*x1)^3)
    df1_dx1=d3-(d4/d5)                         //df1/dx1- partial derivative of f1 wrt to x1
    d6=3*(x1-x2)*((3*x1+x2)^2)-(3*x1+x2)^3
    d7=(1-x1)*(5-x1-x2)*((6+x1*2)^2)
    d8=((x1-x2)*(3*x1+x2)^3)/((1-x1)*((5-x1-x2)^2)*(6+2*x1)^2)
    df1_dx2=(d6/d7)+d8                         //df1/dx2- partial derivative of f1 wrt to x2  
    d9=(x1-x2)*(5-x1-x2)
    df2_dx1=3*x2/d9-(x2*(3*x1+x2)*(5-2*x1))/(d9^2)        //df1/dx2- partial derivative of f1 wrt to x2
    d10=(3*x1+2*x2)/d9
    d11=x2*(3*x1+x2)*(2*x2-5)/(d9^2)
    df2_dx2=d10-d11                             //df1/dx2- partial derivative of f1 wrt to x2
    dm=df1_dx1*df2_dx2-df1_dx2*df2_dx1
    delta_x1=(f2*df1_dx2-f1*df2_dx2)/dm
    delta_x2=(f1*df2_dx1-f2*df1_dx1)/dm
x1new=x1+delta_x1                        //updating the values of x1 & x2
x2new=x2+delta_x2
r1=abs(x1-x1new), r2=abs(x2new-x2)
end
disp(x2,x1,"the value of X1 and X2 respectively is");
m_CH4=1-x1,m_H2O=5-x1-x2,m_CO=x1-x2,m_H2=3*x1+x2,m_CO2=x2      //moles of reactants and products at eqm.
total=m_CO2+m_H2+m_CO+m_H2O+m_CH4
disp(m_CO2,m_H2,m_CO,m_H2O,m_CH4,"the moles at eqm of CH4,H2O,CO,H2,CO2 are")
disp(total,"total number of moles at eqm. is")