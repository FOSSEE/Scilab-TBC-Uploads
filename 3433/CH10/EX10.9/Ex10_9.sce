clear;
clc;
funcprot(0);

//given data
//data from Exampla 10.5
Z = 3;//number of blades
D = 30;//rotor diameter in m
J = 5.0;//tip-speed ratio
l = 1.0;//blade chord in m
beta = 1.59;//pitch angle in deg
omega = 2.5;//in rad/s
rho = 1.2;//density in kg/m^3
cx1 = 7.5;//in m/s
c1 = 1518.8;//from Ex 10.6
c2 = 0.5695*10^6;
P0 = 178.96;//Power developed in kW from Ex 10.7
X1 = 10582;//Total axial force in N from Ex 10.7
Cp1 = 0.378;//Power coefficient from Ex 10.7
zeta1 = 0.638;//rekative power coefficient from Ex 10.7

//Calculations
r_R = 0.25:0.1:0.95;
b = [28.4;19.49;13.80;9.90;7.017;4.900;3.00;1.59];
//b = [27.2985;17.8137;11.8231;7.8176;4.9972;3.0511;1.6476;1.59];
for j = 1:8
    i = 1;
    atemp = 0; a_temp = 0;
    while i>0,        i = i+1;
        f = (2/%pi)*acos(exp(-0.5*Z*(1-r_R(j))*(1+J^2)^0.5));
        phi = (180/%pi)*atan((1/(J*r_R(j)))*((1-atemp)/(1+a_temp)));
        CL = (phi-b(j))/10;
        lamda = f/(63.32/CL);
        anew = (lamda*cos(phi*%pi/180)/(lamda*cos(phi*%pi/180)+f*(sin(phi*%pi/180))^2));
        if atemp<anew then
            atemp = atemp+0.0001;
        elseif atemp>anew
            atemp = atemp-0.0001;
        end
        if (abs((atemp-anew)/anew) < 0.001) then
            break;
        end 
    end
    F(j) = f;
    ph(j) = phi;
    cl(j) = CL;
    a(j) = anew; 
    Var1(j) = ((1-anew)/sin(phi*%pi/180))^2 *cos(phi*%pi/180)*CL*0.1;
//    a_(j) = lamda/(F*cos(phi*%pi/180)-lamda); 
//printf('r_R = %.2f, F = %.4f, a = %.4f, phi = %.4f\n',r_R(j),F(j),a(j),ph(j));
end

for k = 1:8
    lam(k) = F(k)*cl(k)/63.32;
    a_new(k) = lam(k)/(F(k)*cos(ph(k)*%pi/180)-lam(k)); 
    Var2(k) = ((1+a_new(k))/cos(phi*%pi/180))^2 *(r_R(k))^3 *cl(k)*sin(ph(k)*%pi/180)*0.1;
end
X = c1*sum(Var1(1:8));
sum_Var2 = 40.707*10^-3;
tau = c2*sum(Var2(1:8));
P = tau*omega;
Cp = P/(P0*1000);
zeta = (26/17)*Cp;

//Results
printf('               Summary of Results:');
printf('\n ---------------------------------------------------------------------------------------------------');
printf('\n                             Axial force, kN        Power, kW             Cp               zeta');
printf('\n ---------------------------------------------------------------------------------------------------');
printf('\n Without tip correction           %.3f              %.2f              %.3f             %.3f',X1/1000,P0*Cp1,Cp1,zeta1);
printf('\n With tip correction              %.3f               %.2f              %.3f             %.3f',X/1000,P/1000,Cp,zeta);
printf('\n ---------------------------------------------------------------------------------------------------');

//There are errors in the answers given in textbook
