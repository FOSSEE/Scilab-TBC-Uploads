// to calculate voidage of the bed
clear;
clc;
printf("\n Example 6.3");
function[Ga]=Galileo_number()
    d = 4*10^(-3);  //particle size is in meters
    p = 1000;       //density of water is in kg/m^3
    ps = 2500;      //density of glass is in kg/m^3
    g = 9.81;       //acceleration due to gravity is in m/sec^2
    u = 1*10^(-3);  //viscosity is in Ns/m^2
    Ga = d^3*p*(ps-p)*g/u^2;
    funcprot(0);
endfunction
printf("\nGalileo number = %.2f*10^5",Galileo_number()*10^(-5));

function[Re]=Reynolds_no()
    Ga = Galileo_number();
    Re = (2.33*Ga^(0.018)-1.53*Ga^(-0.016))^(13.3);
    funcprot(0);
endfunction
printf("\n The Reynolds no is %d",Reynolds_no());
v = Reynolds_no()*(1*10^(-3))/(0.004*1000);
printf("\nvelocity = %.2f m/sec",v);

n = poly([0],'n');
z = roots((4.8-n)-0.043*(Galileo_number())^(0.57)*(n-2.4));
printf("\nvalue of n is %.2f",z);

//voidage at a velocity is 0.25m/sec
e=0.1;
while 1
    enew = e -((0.25/0.45)-e^(2.42))/(-2.42*e^1.42);
    if (enew == e) then
        printf("\nVoidage is %.3f",e);
        break;
    end
    e=enew;
end