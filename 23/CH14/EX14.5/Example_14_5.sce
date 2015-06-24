clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 14.5
//Caption : Program to derive the equations from LLE data

function[Root]=RF(A,B,K)

    //By Regula Falsi Method
    i=1;
   while(i==1)
    a=A;
    F_a=log((1-a)/a)+(2*a*K)-K;
    b=B;
    F_b=log((1-b)/b)+(2*b*K)-K;
    x1=((a*F_b)-(b*F_a))/(F_b-F_a);
    F_x1=log((1-x1)/x1)+(2*x1*K)-K;
    
    if((F_a*F_x1)<0) then
      flag=1;
      A=a;
      B=x1;
    else((F_x1*F_b)<0)
      flag=2;
      A=x1;
      B=b;  
    end
    x1_a=approx(x1,4);
    b_a=approx(b,4);
    a_a=approx(a,4);
  
    if(x1_a==b_a)
      Root=approx(x1,4);
      i=0;
      break;
    elseif(x1_a==a_a)
      Root=approx(x1,4);
      i=0;  
      break;   
    end   
  end
endfunction  

//Example 14.5

//G_E/RT = Ax1x2                                (A)

//ln V1=A*x2^2=A(1-x1)^2
//ln V2=A*x1^2

//A[(1-x1_a)^2 - (1-x1_b)^2] = ln(x1_b/x1_a)    (B)

//A[(x1_a)^2-(x1_b)^2] = ln((1-x1_b)/(1-x1_a))  (C)

//x1_b=1-x1_a                                   (D)

//A(1 - 2*x1) = ln((1-x1)/x1)                   (E)

//A=a/T + b - clnT                              (F)

//H_E=R(a + cT)x1x2                             (G)

//Cp_E=(dH_E/dT) = Rcx1x2                       (H)


T=linspace(250.1,450,20);
A=(-975.*(T.^-1)) + 22.4 - (3.*log(T));

subplot(3,2,1)
plot(T,A)
x=[250.001 450];
y=[2 2];
plot(x,y,'b--')

x=[272.9 272.9];
y=[1.9001 2.01];
plot(x,y,'r--')

x=[391.2 391.2];
y=[1.9001 2.01];
plot(x,y,'g--')

legend('A vs T(K)','T=272.9,A=2','T=391.2,A=2')

xtitle('(a)A vs T','T(K)','A')

subplot(3,2,2)

clear;

T=linspace(272.9,391.2,100);
K=approx((-975*(T.^-1))+22.4+(-3.*log(T)),4);

root=zeros(100,1);
for(z=1:13)
  root(z)=RF(0.4,0.49,K(z));
end

for(z=14:80)
  root(z)=RF(0.01,0.49,K(z));
end  

for(z=81:100)
  root(z)=RF(0.4,0.49,K(z));
end    
x1=root';
plot2d(x1,T,rect=[0,250,1,450])

x=[0 0.55];
y=[272.9 272.9];
plot2d(x,y,style=3)

x=[0 0.55];
y=[391.2 391.2];
plot2d(x,y,style=4)

legend('T vs x1','T=272.9K(LCST)','T=391.2K(UCST)')
xtitle('(b)T vs x1','x1','T(K)')

root=1-x1;
x1=root;
plot2d(x1,T,rect=[0,250,1,450])

x=[0.5 0.51];
y=[272.9 272.9];
plot2d(x,y)

x=[0.5 0.51];
y=[391.2 391.2];
plot2d(x,y)

clear;
//xset('window',1)


T=linspace(250.1,450,20);
A=(-540.*(T.^-1)) + 21.1 - (3.*log(T));

subplot(3,2,3)
plot(T,A)
x=[250.001 450];
y=[2 2];
plot(x,y,'b--')

x=[346 346];
y=[1.51 2.2];
plot(x,y,'r--')

legend('A vs T(K)','A=2','T=346K(UCST)')
xtitle('(a)A vs T','T(K)','A')
subplot(3,2,4)
clear;
T=linspace(250,346,100);
K=approx((-540*(T.^-1))+21.1+(-3.*log(T)),4);

root=zeros(100,1);
for(z=1:100)
  root(z)=RF(0.1,0.49,K(z));
end
x1=root';
plot2d(x1,T,rect=[0,250,1,450])
x=[0 0.55];
y=[346 346];
plot2d(x,y,style=3)
legend('T vs x1','T=346K(UCST)')
xtitle('(b)T vs x1','x1','T(K)')
root=1-x1;
x1=root;

plot2d(x1,T,rect=[0,250,1,450])
x=[0.49 0.51];
y=[345.4 345.4];
plot2d(x,y)

clear;
//xset('window',2)


T=linspace(250.1,450,20);
A=(-1500.*(T.^-1)) + 23.9 - (3.*log(T));

subplot(3,2,5)
plot(T,A)
x=[250.001 450];
y=[2 2];
plot(x,y,'b--')

x=[339.7 339.7];
y=[1.35 2.2];
plot(x,y,'r--')

legend('A vs T(K)','A=2','T=339.7K(LCST)')
xtitle('(a)A vs T','T(K)','A')
subplot(3,2,6)
clear;
T=linspace(339.7,450,100);
K=approx((-1500*(T.^-1))+23.9+(-3.*log(T)),4);

root=zeros(100,1);
for(z=1:100)
  root(z)=RF(0.1,0.49,K(z));
end
x1=root';
plot2d(x1,T,rect=[0,300,1,480])
x=[0 0.55];
y=[339.7 339.7];
plot2d(x,y,style=3)
legend('T vs x1','T=339.7K(LCST)')
xtitle('(b)T vs x1','x1','T(K)')
root=1-x1;
x1=root;

plot2d(x1,T,rect=[0,300,1,480])
x=[0.49 0.51];
y=[339.7 339.7];
plot2d(x,y)

//End