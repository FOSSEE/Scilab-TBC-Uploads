// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 10,Page 500
//Title: Adiabatic reaction temperature
//================================================================================================================
clear 
clc

//INPUT
T0=298.15;//temperature at the entrance (feed) in K
P=0.1;//pressure (operating) in MPa
//The reaction is given by: H2(g)+(1/2)O2(g)--->H20(g)
n=[1;-1;-0.5];//stoichiometric coefficients of H2O(g),H2(g)and O2(g) respectively (no unit)
n_r=[1;0.5];//stochiometric coefficients on the reactant side alone for computing the right hand side of Eq.(A)
m=[0;1;0.5];//inlet mole number of H2O(g),H2(g) and O2(g) respectively 
//The isobaric molar capacity is given by Cp=a+bT+cT^2+dT^3+eT^-2 in J/molK and T is in K from Appendix A.3
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for H2O(g),H2(g),O2(g) respectively)
a=[28.850;27.012;30.255];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for H2O(g),H2(g),O2(g) respectively)
b=[12.055*10^-3;3.509*10^-3;4.207*10^-3];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for H2O(g),H2(g),O2(g) respectively)
c=[0;0;0];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for H2O(g),H2(g),O2(g) respectively)
d=[0;0;0];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for H2O(g),H2(g),O2(g) respectively)
e=[1.006*10^5;0.690*10^5;-1.887*10^5];
del_H=-241.997;//enthalpy of reaction at 298.15K in kJ
del_G=-228.600;//Gibbs free energy of reaction at 298.15K in kJ
R=8.314;//universal gas constant in J/molK

//CALCULATION
//Framing the isobaric molar heat capacity expression
del_a=(n(1,:)*a(1,:))+(n(2,:)*a(2,:))+(n(3,:)*a(3,:));
del_b=(n(1,:)*b(1,:))+(n(2,:)*b(2,:))+(n(3,:)*b(3,:));
del_c=(n(1,:)*c(1,:))+(n(2,:)*c(2,:))+(n(3,:)*c(3,:));
del_d=(n(1,:)*d(1,:))+(n(2,:)*d(2,:))+(n(3,:)*d(3,:));
del_e=(n(1,:)*e(1,:))+(n(2,:)*e(2,:))+(n(3,:)*e(3,:));
mtot=m(1,:)+m(2,:)+m(3,:);//calculation of the total mole number of feed entering (no unit)
del_n=n(1,:)+n(2,:)+n(3,:);//calculation of the total mole number (no unit)
//Using Eq.14.21 to compute the value of del_H0 in kJ
del_H0=((del_H*10^3)-((del_a*T0)+((del_b/2)*T0^2)+((del_c/3)*T0^3)+((del_d/4)*T0^4)-(del_e/T0)))*10^-3;
//Using Eq.14.23 to compute the integration constant
I=(1/(R*T0))*(((del_H0*10^3)-(del_a*T0*log(T0))-((del_b/2)*T0^2)-((del_c/6)*T0^3)-((del_d/12)*T0^4)-((del_e/2)*(1/T0))-(del_G*10^3)));
//The conversion is computed by using Eq.(A) and by Eq.(B) and the two are plotted with respect to temperature. The point of intersection gives the adiabatic reaction temeperature and from that the conversion and the composition are determined.Let E_A denote the conversion obtained by using Eq.A and E_B denote the conversion obtained by using Eq.B (no unit)
//For both the equations, conversion is determined for a temperature range of 2000 to 3800K, by incrementing temperature by 100K every time.
T=2000:100:3800;//framing the temperature range in K
l=length(T);//iteration parameter (no unit)
i=1;//iteration parameter
tol=1e-4;//tolerance limit for convergence of the system when using fsolve
while i<l|i==l
    del_H_T(i)=((del_H0*10^3)+((del_a*T(:,i))+((del_b/2)*T(:,i)^2)+((del_c/3)*T(:,i)^3)+((del_d/4)*T(:,i)^4)-(del_e/T(:,i))))*10^-3;
del_G_T(i)=((del_H0*10^3)-(del_a*T(:,i)*log(T(:,i)))-((del_b/2)*T(:,i)^2)-((del_c/6)*T(:,i)^3)-((del_d/12)*T(:,i)^4)-((del_e/2)*(1/T(:,i)))-(I*R*T(:,i)))*10^-3;
    Ka(i)=exp(-(del_G_T(i)*10^3)/(R*T(:,i)));//calculation of the equilibrium constant (no unit)
    //using Eq.A to determine the conversion(no unit)
E_A(i)=(1/del_H_T(i)*10^-3)*(-((((n_r(1,:)*a(2,:))+(n_r(2,:)*a(3,:)))*(T(:,i)-T0))+((((n_r(1,:)*b(2,:))+(n_r(2,:)*b(3,:)))/2)*((T(:,i))^2-(T0^2)))+((((n_r(1,:)*c(2,:))+(n_r(2,:)*c(3,:)))/3)*((T(:,i))^3-(T0^3)))+((((n_r(1,:)*d(2,:))+(n_r(2,:)*d(3,:)))/4)*((T(:,i))^4-(T0^4)))+(((n_r(1,:)*a(2,:))+(n_r(2,:)*a(3,:)))*((1/T(:,i))-(1/T0)))));
Eguess(i)=0.99;//taking a guess value for the conversion (no unit)
function[fn]=solver_func(Ei)
    //Function defined for solving the system (Using Eq.B to determine the conversion (no unit))
fn=((((m(1,:)+(n(1,:)*Ei))/(mtot+(del_n*Ei)))^n(1,:))*(((m(2,:)+(n(2,:)*Ei))/(mtot+(del_n*Ei)))^n(2,:))*(((m(3,:)+(n(3,:)*Ei))/(mtot+(del_n*Ei)))^n(3,:)))-Ka(i);
endfunction
[E_B(i)]=fsolve(Eguess(i),solver_func,tol)//using inbuilt function fsolve for solving the system of equations
i=i+1
end
//plotting the conversions determined above (using Eqs.A and B respectively) against temperature to determine the adiabatic reaction temperature in K
plot(T,E_A,T,E_B);
legends(['Equation (A)';'Equation (B)'],[2,3],opt="lr");
xtitle('Plot of degree of conversion versus adiabatic reaction temperature','T(K)','E');
//From the above plot, it is determined that the point of intersection occurs around 3440K, which is taken as the reaction temperature, where the conversion=0.68(no unit). Therefore, the conversion at the adiabatic reaction temperature is 0.68
T_adiabatic=3440;//the adiabatic reaction temperature in K
E_adiabatic=0.68;//conversion at the adiabatic reaction temperature (no unit)
//Calculation of the composition of the burned gas (H2,O2 and H2O respectively) at the adiabatic reaction temperature (no unit)
y_H2=((m(2,:)+(n(2,:)*E_adiabatic))/(mtot+(del_n*E_adiabatic)));
y_O2=((m(3,:)+(n(3,:)*E_adiabatic))/(mtot+(del_n*E_adiabatic)));
y_H2O=((m(1,:)+(n(1,:)*E_adiabatic))/(mtot+(del_n*E_adiabatic)));

//OUTPUT
mprintf('\n The adiabatic reaction temperature=%d K\n',T_adiabatic);
mprintf('\n The composition of the burned gases is given by: y_H2=%0.4f \t y_O2=%0.4f \t y_H2O=%0.4f \n',y_H2,y_O2,y_H2O);

//===============================================END OF PROGRAM===================================================
