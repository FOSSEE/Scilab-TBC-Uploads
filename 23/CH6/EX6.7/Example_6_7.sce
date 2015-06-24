clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 6.7
//Caption : Program to Find how much Energy must be Transferred to the Tank

//Given values(from steam tables)
H=293;//[KJ/Kg]  at 343.15K
H_liquid=419.1;//[KJ/Kg]  at 373.15K
H_vapor=2676;//[KJ/Kg]    at 373.15K
V_vapor=1.5;//[m^3]
m1_liquid=500;//[Kg]
rho_liquid=0.001044;//[m^3/Kg]
rho_vapor=1.673;//[m^3/Kg]
del_m=750;//[Kg]

//using the eqn Q=(m2H2)tank-(m1H1)tank-(H*del_m)tank
m1_vapor=(V_vapor-(m1_liquid*rho_liquid))/rho_vapor;
//Term2=((m1H1)tank
Term2=(m1_liquid*H_liquid)+(m1_vapor*H_vapor);
mT=m1_liquid+del_m+m1_vapor;
//Solving Eqn By matrix Method
//m_vapor+m_liquid=mT  and   (rho_vapor*m_vapor)+(rho_liquid*rho_vapor)=V_vapor
A=[1,1;rho_vapor,rho_liquid];
B=[mT;V_vapor];
X=inv(A)*B;
m2_vapor=X(1,1);
m2_liquid=X(2,1);

Term1=(m2_liquid*H_liquid)+(m2_vapor*H_vapor);
Q=approx(Term1-Term2-del_m*H,0);

disp('KJ',Q,'Heat Required')
disp('Note: The Answer Varies With That of The Book because the calculations as in Book do not give the Answer the Book results')
//End