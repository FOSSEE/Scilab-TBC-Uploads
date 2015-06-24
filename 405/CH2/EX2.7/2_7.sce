clear;
clc;
printf("\t\t\tExample Number 2.7\n\n\n");
// influence of thermal conductivity on fin temperature profiles
// illustration2.7
// solution

d = 0.02;// [m] diameter of rod
L = 0.1;// [m] length of rod
A = %pi*d^(2)/4;// [square meter] crossectional area of rod
h = 25;// [W/square meter per degree celsius] convectional heat transfer coefficient
k_c = 385;// [W/m per degree celsius] heat transfer coefficient of copper
k_s = 17;// [W/m per degree celsius] heat transfer coefficient of steel 
k_g = 0.8;// [W/m per degree celsius] heat transfer coefficient of glass 
// calculating (h*P/(k*A)) and m and m*L for three different rod 
P = %pi*d;// [m] perimeter of rod
printf("Material\t(hP/kA)\t\tm\t\tmL");
printf("\ncopper\t\t%f\t%f\t\t%f",(h*P/(k_c*A)),((h*P/(k_c*A)))^(1/2),((h*P/(k_c*A)))^(1/2)*L);
printf("\nstainless steel\t%f\t%f\t%f",(h*P/(k_s*A)),((h*P/(k_s*A)))^(1/2),((h*P/(k_s*A)))^(1/2)*L);
printf("\nglass\t\t%f\t%f\t%f",(h*P/(k_g*A)),((h*P/(k_g*A)))^(1/2),((h*P/(k_g*A)))^(1/2)*L);
// 
Lc = L+d/4;// [m] corrected length
// the parameters of interest for the heat flow and efficiency comparisons are now tabulated as 
printf("\nthe parameters of interest for the heat flow and efficiency comparisons are now tabulated as");
printf("\nMaterial\t\t(hPkA)\t\tmLc");
printf("\ncopper\t\t%f\t\t%f",(h*P*k_c*A),((h*P/(k_c*A)))^(1/2)*Lc);
printf("\nstainless steel\t%f\t\t%f",(h*P*k_s*A),((h*P/(k_s*A)))^(1/2)*Lc);
printf("\nglass\t\t%f\t\t%f",(h*P*k_g*A),((h*P/(k_g*A)))^(1/2)*Lc);
// efficiency is calculated using equation(2-38) by using the above values of mLc
// to compare the heat flows we could either calculate the values from equation (2-36) for a unit value of theta_o
printf("\nMaterial\t\tefficiency\tq relative to copper percentage");
printf("\ncopper\t\t%f\t\t%f",tanh(((h*P/(k_c*A)))^(1/2)*Lc)/(((h*P/(k_c*A)))^(1/2)*Lc),100);
printf("\nstainless steel\t%f\t\t%f",tanh(((h*P/(k_s*A)))^(1/2)*Lc)/(((h*P/(k_s*A)))^(1/2)*Lc),((tanh(((h*P/(k_s*A)))^(1/2)*Lc)/(((h*P/(k_s*A)))^(1/2)*Lc))/(tanh(((h*P/(k_c*A)))^(1/2)*Lc)/(((h*P/(k_c*A)))^(1/2)*Lc)))*100);
printf("\nglass\t\t%f\t\t%f",tanh(((h*P/(k_g*A)))^(1/2)*Lc)/(((h*P/(k_g*A)))^(1/2)*Lc),((tanh(((h*P/(k_g*A)))^(1/2)*Lc)/(((h*P/(k_g*A)))^(1/2)*Lc))/(tanh(((h*P/(k_c*A)))^(1/2)*Lc)/(((h*P/(k_c*A)))^(1/2)*Lc)))*100);
deff('[y]=f1(x)','y=exp(-((h*P/(k_c*A)))^(1/2)*x)/(1+exp(-2*((h*P/(k_c*A)))^(1/2)*L))+exp(((h*P/(k_c*A)))^(1/2)*x)/(1+exp(2*((h*P/(k_c*A)))^(1/2)*L))');
deff('[y]=f2(x)','y=exp(-((h*P/(k_s*A)))^(1/2)*x)/(1+exp(-2*((h*P/(k_s*A)))^(1/2)*L))+exp(((h*P/(k_s*A)))^(1/2)*x)/(1+exp(2*((h*P/(k_s*A)))^(1/2)*L))');
deff('[y]=f3(x)','y=exp(-((h*P/(k_g*A)))^(1/2)*x)/(1+exp(-2*((h*P/(k_g*A)))^(1/2)*L))+exp(((h*P/(k_g*A)))^(1/2)*x)/(1+exp(2*((h*P/(k_g*A)))^(1/2)*L))');
x=0:0.01:0.1;
plot(x,f1,x,f2,x,f3);
legend("copper, k = 385 W/m degree celsius","stainless steel k = 17 W/m degree celsius","glass k = 0.8 W/m degree celsius");
xlabel("x,m");
ylabel("theta / theta_O");
xgrid();



