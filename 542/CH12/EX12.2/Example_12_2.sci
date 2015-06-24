clear;
clc;
printf("\n Example 12.2");
G = 2;                             //air flow rate in kg/m^2.sec
Re = 5160;                         //Re stands for Reynolds number
f = 0.02;                         //friction factor = R/pu^2
d_SO2 = 0.116*10^(-4);            //diffusion coefficient in m^2/sec
v = 1.8*10^(-5);                        //viscosity in mNs/m^2
p = 1.154;                        //density is in kg/m^3

//(hd/u)(Pm/P)(u/p/d_SO2)^0.56 = BRe^(-0.17)=jd

function[x]=a1()
    x = (v/(p*d_SO2))^(0.56);
    funcprot(0);
endfunction

//jd = f =R/pu^2
function[y]=a2()
    y = f/a1();
    funcprot(0);
endfunction
//G = pu
 u = (G/p);                     //u is in m/sec

function[x1]= a3()
    x1 = a2()*u;
    funcprot(0);
endfunction

function[d]=d1()
    d = Re*v/(G);
    funcprot(0);
endfunction

printf("\n d = %f mm",d1());
R = 8314;            //R is in m^3(N/m^2)/K kmol
T = 298;             //T is in Kelvins
function[kG]=kG1()
    kG = a3()/(R*T);
    funcprot(0);
endfunction

printf("\n kG = %.2f*10^(-8) kmol/m^2sec(N/m^2)",kG1()*10^(8));
printf("\n kG = %.2f*10^(-4)kg SO2/m^2sec(kN/m^2)",kG1()*10^(7)*64);











