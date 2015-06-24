clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 3.8
//Caption : Program to Find Molar Volume of n-Butane

//Given Values
T=350;//Temp=350K(76.85`C)
P=9.4573;//Pressure=9.4573bar
R=83.14;

Tc=425.1;//App B
Pc=37.96;//App B
Tr=T/Tc;
Pr=P/Pc;
//Parameters for RK
si=0.42748;
omega=0.08664;
epsilon=0;
sigma=1;
a=Tr^-0.5;

//Solution

//Using Eq(3.51)
q=si*a/(omega*Tr);
Beta=omega*Pr/Tr;

disp('The Following Results given By Redlich/Kwong Equation')
//(a)
Z=1;//initial
a=Z;
for i=0:10
  b=1+Beta-((q*Beta)*(a-Beta)/(a*(a+Beta)));
   if((b-a)==0.0001)
     break;
   end
   a=b;
   i=i+1;
end
Z=approx(b,4)
V=round(Z*R*T/P);
disp('cm^3/mol',V,'Molar Volume of saturated Vapor is ');
 
//(b)  
Z=Beta;//initial
a=Z;
for i=0:20
  b=Beta+(a*(a+Beta)*(1+Beta-a)/(q*Beta));
   if((b-a)==0.0001)
     break;
   end
   a=b;
   i=i+1;
end
Z=approx(b,5)
V=approx(Z*R*T/P,1);
disp('cm^3/mol',V,'Molar Volume of Saturated Liquid is '); 

//Given Values
T=350;//Temp=350K(76.85`C)
P=9.4573;//Pressure=9.4573bar
R=83.14;

Tc=425.1;//App B
Pc=37.96;//App B
Tr=T/Tc;
Pr=P/Pc;
//Parameters for eqns[vdW,RK,SRK,PR]
si=[27/64,0.42748,0.42748,0.45724];
omega=[1/8,0.08664,0.08664,0.07779];
epsilon=[0,0,0,(1-sqrt(2))];
sigma=[0,1,1,(1+sqrt(2))];
w=0.2;//App B
aSRK=(1+((0.480+(1.574*w)-(0.1768*w^2))*(1-Tr^0.5)))^2;
aPR=(1+((0.37464+(1.54226*w)-(0.26992*w^2))*(1-Tr^0.5)))^2;
a=[1,Tr^-0.5,aSRK,aPR];

//Solution

disp('      By All Equations')
//Using Eq(3.51)
q=si.*a./(omega.*Tr);
Beta=omega.*Pr./Tr;

//disp('The Following Results given By Redlich/Kwong Equation')
//(a)
for j=1:4

    Z=1;//initial
    A=Z;
    for i=0:10
      b=1+Beta(j)-((q(j)*Beta(j))*(A-Beta(j))/((A+(epsilon(j)*Beta(j)))*(A+(sigma(j)*Beta(j)))));
       if((b-A)==0.0001)
         break;
       end
       A=b;
       i=i+1;
    end
    z(j)=approx(b,4);
end
V=round(z.*R*T/P);
disp('Molar Volume(Vv) of Saturated Vapor'); 
disp(V','    vdW      RK      SRK       PR')
 
//(b)  
for j=1:4
    Z=Beta(j);//initial
    A=Z;
    for i=0:20
      b=Beta(j)+((A+(epsilon(j)*Beta(j)))*(A+(sigma(j)*Beta(j)))*(1+Beta(j)-A)/(q(j)*Beta(j)));
       if((b-A)==0.0001)
         break;
       end
       A=b;
       i=i+1;
    end
    z(j)=approx(b,5);
end
V=approx(z*R*T/P,1);
disp('Molar Volume(Vl) of Saturated Liquid'); 
disp(V','    vdW      RK      SRK       PR')

disp('Note : Exp Value is Vv = 2482 cm^3/mol and Vl = 115 cm^3/mol')

//End