clc
//following is the function to solve cubic equation
function[x1]=cub(a,b,c,d)
    funcprot(0)
    r=b/a;
    s=c/a;
    t=d/a;
    p=(3*s-r^2)/3;
    q=2*r^3/27-r*s/3+t;
    D=(p/3)^3+(q/2)^2;
    u=(-q/2+sqrt(D))^(1/3);
    v=(-q/2-sqrt(D))^(1/3);
    y1=u+v;
    x1=y1-(r/3);
    funcprot(0)
endfunction
R=8.314*(10^3) //universal gas constant
T=300 //temperature in kelvin
P=60*(10^6) //pressure in Pascals
v=(R*T)/P //volume of cylinder in metre cube
mprintf("v=%fmetre cube\n",v)//ans may vary due to roundoff error
a=228.296*(10^(-3))//vander waals constant for methane in Pa(metre cube/mol)square
b=0.043*(10^(-3))//vander waaals constant for methane in metre cube/mol
R=8.314 //universal gas constant
v=cub(P,(-(P*b)-(R*T)),a,(-a*b))//(P+a/v*v)*(v-b)=RT(van der Waals equation)
mprintf("v=%fmetre-cube/mol\n",v)//ans may vary due to roundoff error
Tc=190.7 //Tc for methane in kelvin
Pc=46.41 //Pc for methane in bar
a=0.42748*R*R*(Tc^2.5)/(Pc*(10^5)*(T^0.5)) //Redlich-Kwong equation
b=0.0867*R*Tc/(Pc*10^5) //Redlich-Kwong equation
mprintf("a=%fmetre^6Pa/mol-square\n",a)//ans may vary due to roundoff error
mprintf("b=%fmetre-cube/mol\n",b)//ans may vary due to roundoff error
v=cub(P,(-R*T),(-P*b*b-R*T*b+a),(-a*b))//P=(RT/v-b)-(a/v(v+b))
mprintf("v=%fmetre cube/kmol\n",v*1000) //ans may vary due to roundoff error





 
 
