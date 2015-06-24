clear;
clc;

//Properties at (Tw+Ts)/2 = 100.5 degree celsius
deltaT1 = 1;                  //in degree celsius
p1 = 7.55e-4;           //[K^(-1) p1 is coefficient of cubical expansion
v1 = 0.294e-6;                //[m^2/sec]  viscosity at 100.5 degree celsius
k1 = 0.683;                  //[W/m-k]thermal conductivity
Pr1 = 1.74;                  //Prandtl number
g = 9.81;                    //acceleration due to gravity
L = 0.14e-2;                 //diameter in meters
//Properties at (Tw+Ts)/2 =102.5
deltaT2 = 5;                 //in degree celsius
p2 = 7.66e-4;            //[K^(-1) p1 is coefficient of cubical expansion
v2 = 0.289e-6;            //[m^2/sec]  viscosity at 102.5 degree celsius 
k2 = 0.684;                 //[W/m-k]thermal conductivity
Pr2 = 1.71;                  //Prandtl number 
//Properties at (Tw+Ts)/2 =105
deltaT3 = 10;                 //in degree celsius
p3 = 7.80e-4;            //[K^(-1) p1 is coefficient of cubical expansion
v3 = 0.284e-6;            //[m^2/sec]  viscosity at 105 degree celsius 
k3 = 0.684;                 //[W/m-k]thermal conductivity
Pr3 = 1.68;                  //Prandtl number 

function[Ra]=Rayleigh_no(p,deltaT,v,Pr)
     Ra = [(p*g*deltaT*L^3)/(v^2)]*Pr;
     funcprot(0);
endfunction 

function[q] = flux(k,deltaT,Rai,v)
    q=(k/L)*(deltaT)*{0.36+(0.518*Rai^(1/4))/[1+(0.559/v)^(9/16)]^(4/9)};
    funcprot(0);
endfunction

Ra = Rayleigh_no(p1,deltaT1,v1,Pr1);
q1 = flux(k1,deltaT1,Ra,Pr1);
printf("\n q/A = %.1f W/m^2 at (Tw-Ts)=1",q1);
Ra = Rayleigh_no(p2,deltaT2,v2,Pr2);
q2 = flux(k2,deltaT2,Ra,Pr2);
printf("\n q/A = %.1f W/m^2 at (Tw-Ts)=5",q2);
Ra = Rayleigh_no(p3,deltaT3,v3,Pr3);
q3 = flux(k3,deltaT3,Ra,Pr3);
printf("\n q/A = %.1f W/m^2 at (Tw-Ts)=10",q3);

//At 100 degree celsius
Cpl = 4.220;          //[kJ/kg]
lamda = 2257;         //[kJ/kg]
ul = 282.4e-6;        //viscosity is in kg/m-sec
sigma = 589e-4;       //Surface tension is in N/m
pl = 958.4;           //density in kg/m^3
pv =0.598;            //density of vapour in kg/m^3
deltap = pl-pv;
Prl = 1.75;           //Prandtl no. of liquid
Ksf = 0.013;
function[q1]=heat_flux(deltaT)
    q1=141.32*deltaT^3;
    funcprot(0);
endfunction

printf("\n q/A at deltaT = 5 degree celsius = %.1f W/m^2",heat_flux(5));
printf("\nq/A at deltaT = 10 degree celsius = %.1f W/m^2",heat_flux(10));
printf("\n q/A at deltaT =20 degree celsius = %.1f W/m^2",heat_flux(20));
//qi = [heat_flux(5),heat_flux(10),heat_flux(20)];
q = [q1 q2 q3];
i=1;
while i<=10
    T(i)=i;
    ql(i) = heat_flux(i);
    i=i+1;
end
plot2d([1 5 10],q);
plot2d(T,ql);
xtitle("Boiling curve","(Tw - Ts)degree celsius","Heat flux,(q/A)W/m^2");
L1 = (L/2)*[g*(pl-pv)/sigma]^(1/2);
printf("\n Peak heat flux L = %.3f ",L1);    
f_L = 0.89+2.27*exp(-3.44*L1^(0.5));
printf("\n f(l) = %.4f",f_L);
q2 = f_L*{(%pi/24)*lamda*10^(3)*pv^(0.5)*[sigma*g*(pl-pv)]^(0.25)};
printf("\n q/A = %.3e W/m^2",q2);

Tn = poly([0],'Tn');
Tn1 = roots(141.32*Tn^3 - q2);
printf("\n Tw-Ts = %.1f degree celsius",Tn1(3));



printf("\n\n Minimum heat flux");
q3 = 0.09*lamda*10^3*pv*[sigma*g*(pl-pv)/(pl+pv)^(2)]^(0.25);
printf("\n q/A = %d W/m^2",q3);
printf("\n\n Stable film boiling");
Ts1 = 140;          //surface temperature in degree celsius
Ts2 = 200;          //surface temperature in degree celsius
Ts3 = 600;          //surface temperature in degree celsius
Twm1 = (140+100)/2; //Mean film temperature
//properties of steam at 120 degree celsius and 1.013 bar
kv = 0.02558;       //thermal conductivity in W/mK
pv1 = 0.5654;       //vapor density in kg/m^3
uv=13.185*10^(-6);  //viscosity of vapour in kg/m sec
lamda1 = (2716.1-419.1)*10^(3);//Latent heat of fusion in J/kg
hc = 0.62*[(kv^3)*pv*(pl-pv)*g*lamda1/(L*uv*(140-100))]^(0.25);
printf("\n hc = %.2f W/m^2",hc);
qrad = 5.67*10^(-8)*(413^4 - 373^4)/[(1/0.9)+1-1];
printf("\n q/A due to radiation = %.2f W/m^2",qrad);
hr = qrad/(413-373);
printf("\n hr = %.2f W/m^2 K ",hr);

printf("\n Since hr<hc ");
printf("\n The total heat transfer coefficient ");
h = hc + 0.75*hr;
printf(" h = %.2f W/m^2 K",h);
printf("\n Total heat flux = %.3f W/m^2 K",h*(140-100));

hc_200 = 0.62*[(kv^3)*pv*(pl-pv)*g*lamda1/(L*uv*(200-100))]^(0.25);
qrad1 = 5.67*10^(-8)*(473^4 - 373^4)/[(1/0.9)+1-1];
hr_200 = qrad1/(200-100);
printf("\n\n hc = %.2f W/m^2",hc_200);
printf("\n hr = %.2f W/m^2 K",hr_200);
printf("\n q/A due to radiation = %.2f W/m^2",qrad1);
h_200 = hc_200 +0.75*hr_200;
printf("\n Total heat flux = %d W/m^2",h_200*100);
hc_600 = 0.62*[(kv^3)*pv*(pl-pv)*g*lamda1/(L*uv*(600-100))]^(0.25);
qrad2 = 5.67*10^(-8)*(873^4 - 373^4)/[(1/0.9)+1-1];
hr_600 = qrad1/(600-100)
printf("\n\n hc = %.2f W/m^2",hc_600);
printf("\n hr = %.2f W/m^2 K",hr_600);
printf("\n q/A due to radiation = %.2f W/m^2",qrad2);



