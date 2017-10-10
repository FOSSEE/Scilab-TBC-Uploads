//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-9 Ex9.1 Pg No.376
//Title:Model II- Volumetric Mass Transfer Coefficient (K)
//============================================================================================================

clear
clc
//INPUT
u0=[ 0.1 0.3 0.5 0.75 0.95 1.15];//Fluid Velocities (m/sec)
X=[0.923 0.872 0.846 0.775 0.728 0.664];//Conversion
h_by_h0=[1.26 1.44 1.66 2.0 2.3 2.7];//Height of bed under fluidized condition by height of packed bed
Epsilon_m=0.456;//Fraction of voids in packed bed
h0=0.75;//Height of packed bed (m)
k_r=4.45 ;//Reaction rate constant(sec-1)
W=5;//Weight of the bed (kg)


//CALCULATION
n=length(X);
for i=1:n
    K0_L_by_u0(i)=log(1/(1-X(i)));//Refer equation 9.21 Pg No.371
    L(i)=h_by_h0(i)*h0;
    one_minus_epsilon(i)=(1-Epsilon_m)/h_by_h0(i); 
    k_rhob(i)=k_r*one_minus_epsilon(i); 
    K0(i)=K0_L_by_u0(i)*u0(i)/L(i);
    K(i)=1/((K0(i).^(-1))-(1/k_rhob(i))); //Refer equation 9.19 Pg No.371
end


//OUTPUT
mprintf('\nThe values of K for given velocities')
mprintf('\n u (m/sec) \t K (sec-1) ');
mprintf('\n===================================================================');
for i=1:n
    mprintf('\n %.3g \t \t %0.3f',u0(i),K(i));            
end

//FILE OUTPUT
fid= mopen('.\Chapter9-Ex1-Output.txt','w');
mfprintf(fid,'\nThe values of K for given velocities')
mfprintf(fid,'\n u (m/sec) \t K (sec-1) ');
mfprintf(fid,'\n===================================================================');
for i=1:n
    mfprintf(fid,'\n %.3g \t \t %0.3f',u0(i),K(i));            
end    

//==============================================END OF PROGRAM=============================================    
    
