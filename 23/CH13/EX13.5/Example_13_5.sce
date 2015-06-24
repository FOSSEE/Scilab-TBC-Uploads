clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 13.5
//Caption : Program to Calculate the Fraction of Heat Reacted for Various Cases

//CO(g) + H2O(g) --> CO2(g) + H2(g)

v_CO=-1;
v_H2O=-1;
v_CO2=1;
v_H2=1;
v=v_CO+v_H2O+v_CO2+v_H2;

//Calculate e(Fraction of Stream) in each case

//(a) 
n_H2O_a=1;//mol
n_CO_a=1;//mol
T_a=1100;//[K]
P_a=1;//[bar]

x=10^4/T_a;
//at this x the value of ln K=0 form Graph
y=0;
nt=n_H2O_a+n_CO_a;
K=exp(y);

//y_H2O=(n_H2O+(v_H2O*e))/nt
//y_CO=(n_CO+(v_CO*e))/nt
//y_H2=(v_H2*e)/nt
//y_CO2=(v_CO2*e)/nt


y_H2O='(1-e)/2'
y_CO='(1-e)/2'
y_H2='e/2'
y_CO2='e/2'


//K=(y_H2*y_CO2)/(y_CO*y_H2O)

K='e^2/((1-e)^2)=1';


//Solving 
e_a=0.5;

//(b) same as in (a) P_b=10bar

//Pressure has no effect on fraction of stream
e_b=e_a;

//(c) same as in (a) N2=2mols included

//Since N2 just act as diluent
//It only changes the total moles fraction remains the same
e_c=e_a;

//(d)
n_H2O_d=2;//mol
n_CO_d=1;//mol
T_d=1100;//[K]
P_d=1;//[bar]

x=10^4/T_d;
//at this x the value of ln K=0 form Graph
y=0;
nt=n_H2O_d+n_CO_d;
K=exp(y);

//y_H2O=(n_H2O+(v_H2O*e))/nt
//y_CO=(n_CO+(v_CO*e))/nt
//y_H2=(v_H2*e)/nt
//y_CO2=(v_CO2*e)/nt

y_H2O='(1-e)/3'
y_CO='(2-e)/3'
y_H2='e/3'
y_CO2='e/3'

//K=(y_H2*y_CO2)/(y_CO*y_H2O)

K='e^2/((1-e)(2-e))=1';

//Solving 
e=approx(2/3,3);
e_d=approx(e/2,3);

//(e) 
//Here the y_CO and y_H2O are interchanged

//No change in Fraction of stream
e_e=e_d;

//(f)  
n_H2O_f=1;//mol
n_CO_f=1;//mol
n_CO2_f=1;;//[mol]
T_f=1100;//[K]
P_f=1;//[bar]

x=10^4/T_f;
//at this x the value of ln K=0 form Graph
y=0;
nt=n_H2O_f+n_CO_f+n_CO2_f;
K=exp(y);

//y_H2O=(n_H2O+(v_H2O*e))/nt
//y_CO=(n_CO+(v_CO*e))/nt
//y_CO2=(n_CO2+(v_CO2*e))/nt
//y_H2=(v_H2*e)/nt


y_H2O='(1-e)/3'
y_CO='(1-e)/3'
y_H2='(1+e)/3'
y_CO2='e/2'


//K=(y_H2*y_CO2)/(y_CO*y_H2O)

K='(e*(e+1))/((1-e)^2)=1';

//Solving 
e_f=approx(1/3,3);

//(g)
n_H2O_g=1;//mol
n_CO_g=1;//mol
T_g=1650;//[K]
P_g=1;//[bar]

x=10^4/T_g;
//at this x the value of ln K=0 form Graph
y=-1.15;
nt=n_H2O_g+n_CO_g;
K=exp(y);

//y_H2O=(n_H2O+(v_H2O*e))/nt
//y_CO=(n_CO+(v_CO*e))/nt
//y_H2=(v_H2*e)/nt
//y_CO2=(v_CO2*e)/nt


y_H2O='(1-e)/2'
y_CO='(1-e)/2'
y_H2='e/2'
y_CO2='e/2'


//K=(y_H2*y_CO2)/(y_CO*y_H2O)

Exp='e^2/((1-e)^2)=0.316';

//Solving 
p=poly([K -2*K K-1],'e','c');

root=roots(p);
e_g=approx(root(1),2);

//Other Root is negative and the Fraction of steam cannot be negative


disp('(a)1mol H20 and 1 mol CO T=1100K  P=1bar')
disp('(b)1mol H20 and 1 mol CO T=1100K  P=10bar')
disp('(c)1mol H20 and 1 mol CO 2mol N2 T=1100K  P=1bar')
disp('(d)2mol H20 and 1 mol CO T=1100K  P=1bar')
disp('(e)1mol H20 and 2 mol CO T=1100K  P=1bar')
disp('(f)1mol H20 and 1 mol CO 1mol CO2 T=1100K  P=1bar')
disp('(g)1mol H20 and 1 mol CO T=1650K  P=1bar')
e=[e_a e_b e_c e_d e_e e_f e_g];
disp(e,'Fraction Of Steam Reacted in each case')

//End