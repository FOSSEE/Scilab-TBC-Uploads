clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=MCPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))
  funcprot(0);
endfunction
    
function[Q]=IDCPH(T0,T,dA,dB,dC,dD)
  t=T/T0;
  Q=(dA+((dB/2)*T0*(t+1))+((dC/3)*T0*T0*((t^2)+t+1))+(dD/(t*T0*T0)))*(T-T0)
  funcprot(0);
endfunction

function[Q]=IDCPS(T0,T,dA,dB,dC,dD)
  t=T/T0;
  Q=((dA)*log(t))+(((dB*T0)+(((dC*T0*T0)+(dD/(t*t*T0*T0)))*(t+1)/2))*(t-1))
  funcprot(0);
endfunction

//Example 13.9
//Caption : Program to Determine Composition and Temperature of Product Steam

P=1;//[bar]
T0=298.15;//[K]
R=8.314;

//SO2 + 0.5O2 --> SO3
dHo_298=-98890;//[J/mol]
dGo_298=-70866;//[J/mol]

n_O2_i=0.5*1.2;//  Moles O2 Entering
n_N2_i=n_O2_i*(79/21);//Moles N2 Entering

//n_SO2=1-e
//n_O2=0.6-(0.5*e)
//n_SO3=e
//n_N2=2.257

//By Energy Balance
//(dHo_298*e)+dHo_P = dH = 0                                   (A)

//dHo_P=Cp*(T-298.15)  Cp=E nCp                                (B)
   
//Cp_SO2=R*MCPH(T0,T,5.699,0.801E-3,0,-1.015E+5) 
//Cp_O2=R*MCPH(T0,T,3.639,0.506E-3,0,-0.227E+5)
//Cp_SO3=R*MCPH(T0,T,8.06,1.056E-3,0,-2.028E+5)
//Cp_N2=R*MCPH(T0,T,3.28,0.593E-3,0,0.04E+5)

//T=(-(dHo_298*e)/Cp)+T0                                       (C)

//K=(e/(1-e))*((3.857-(0.5*e))/(0.6-(0.5*e)))^0.5              (D)

//ln K = ((dHo_298-dGo_298)/(R*T0))-(dHo_298/(R*T))+I1-(I2/T)  (E)

//I1=IDCPS(T0,T,0.5415,0.002E-3,0,-0.8995E+5)
//I2=IDCPH(T0,T,0.5415,0.002E-3,0,-0.8995E+5)

//Iteration
A1=300;//Initial
i=-1;

while(i==-1)
  
    I1=IDCPS(T0,A1,0.5415,0.002E-3,0,-0.8995E+5);
    I2=IDCPH(T0,A1,0.5415,0.002E-3,0,-0.8995E+5);
    //Applying in Eqn (E)
    K = exp(((dHo_298-dGo_298)/(R*T0))-(dHo_298/(R*A1))+I1-(I2/A1));
    //Applying in Eqn (D)
    if(isreal(K))
      x=0;
      // p=poly([-0.6*(K^2) 1.7*(K^2) 3.857-(1.6*(K^2)) 0.5*((K^2)-1)],'e','c')
      // (0.5*((K^2)-1)*(x^3))+((3.857-(1.6*(K^2)))*(x^2))+(1.7*(K^2)*x)+(-0.6*(K^2))
      F_x=(0.5*((K^2)-1)*(x^3))+((3.857-(1.6*(K^2)))*(x^2))+(1.7*(K^2)*x)+(-0.6*(K^2));
      F_a=F_x;

      x=1;
      F_x=(0.5*((K^2)-1)*(x^3))+((3.857-(1.6*(K^2)))*(x^2))+(1.7*(K^2)*x)+(-0.6*(K^2));
      //F_x=(x^3)-(4*x)+1;
      F_b=F_x;
      root=-100;
      A=0;
      B=1;
      i=1;
      while(i==1)
       a=A;
       F_a=(0.5*((K^2)-1)*(a^3))+((3.857-(1.6*(K^2)))*(a^2))+(1.7*(K^2)*a)+(-0.6*(K^2));
       //F_a=(a^3)-(4*a)+1;
       b=B;
       F_b=(0.5*((K^2)-1)*(b^3))+((3.857-(1.6*(K^2)))*(b^2))+(1.7*(K^2)*b)+(-0.6*(K^2));
       //F_b=(b^3)-(4*b)+1;
       x1=((a*F_b)-(b*F_a))/(F_b-F_a);
       F_x1=(0.5*((K^2)-1)*(x1^3))+((3.857-(1.6*(K^2)))*(x1^2))+(1.7*(K^2)*x1)+(-0.6*(K^2));
       //F_x1=(x1^3)-(4*x1)+1;
  
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
        root=approx(x1,5);
        i=0;
        break;
      elseif(x1_a==a_a)
        root=approx(x1,5);
        i=0;
        break;  
      end    
  
    end
    e=root;
    Cp_SO2=R*MCPH(T0,A1,5.699,0.801E-3,0,-1.015E+5); 
    Cp_O2=R*MCPH(T0,A1,3.639,0.506E-3,0,-0.227E+5);
    Cp_SO3=R*MCPH(T0,A1,8.06,1.056E-3,0,-2.028E+5);
    Cp_N2=R*MCPH(T0,A1,3.28,0.593E-3,0,0.04E+5);
  
    n_SO2=1-e;
    n_O2=0.6-(0.5*e);
    n_SO3=e;
    n_N2=2.257;
    if(n_SO2<0 | n_O2<0 | n_SO3<0)
      e=0;
    end  
    Cp=(n_SO2*Cp_SO2)+(n_O2*Cp_O2)+(n_SO3*Cp_SO3)+(n_N2*Cp_N2);
    //Applying in Eqn (C)
    B=(-(dHo_298*e)/Cp)+T0;
    m=(A1+B)/2;
    dT=approx(abs(m-A1),2);
    if(dT<0.1)
      i=0;
      T=approx(A1,1);
      e=approx(e,2);
      break;
   end
    A1=m;
    i=-1;
  else
    i=-1;
    A1=A1+1; 
  end  
end
disp(e,'Fraction')

n_SO2=1-e
n_O2=0.6-(0.5*e)
n_SO3=e
n_N2=2.257

nt=n_SO2+n_O2+n_SO3+n_N2;

y_SO2=approx(n_SO2/nt,4);
y_O2=approx(n_O2/nt,4);
y_SO3=approx(n_SO3/nt,4);
y_N2=approx(n_N2/nt,4);

disp(T,'Final Temperature')   
disp(y_SO2,'Composition of SO2')   
disp(y_O2,'Composition of O2')   
disp(y_SO3,'Composition of SO3')   
disp(y_N2,'Composition of N2')   

//End