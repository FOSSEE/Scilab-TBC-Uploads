clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 13.1
//Caption : Program to determine the Expressions for mole Fractions yi

//CH4 + H2O --> CO + 3H2

n_CH4=2;//Moles of CH4
n_H2O=1;//Moles of H20
n_CO=1;//Moles of CO
n_H2=4;//Moles of H2

v_CH4=-1;
v_H2O=-1
v_CO=1;
v_H2=3;

v=v_CH4+v_H2O+v_CO+v_H2;
n=n_CH4+n_H2O+n_CO+n_H2;

//y_CH4=(n_CH4+(v_CH4e)/n+(v*e))
//y_H2O=(n_H2O+(v_H2Oe)/n+(v*e))
//y_CO=(n_CO+(v_CO*e)/n+(v*e))
//y_H2=(n_H2+(v_H2*e)/n+(v*e))

y_CH4='(n_CH4+(v_CH4e)/n+(v*e))';
y_H2O='(n_H2O+(v_H2Oe)/n+(v*e))';
y_CO='(n_CO+(v_CO*e)/n+(v*e))';
y_H2='(n_H2+(v_H2*e)/n+(v*e))';



//Hence

y_CH4='(2-e/8+2e)';
y_H2O='(1-e/8+2e)';
y_CO='(1+e/8+2e)';
y_H2='(4+3e/8+2e)';

disp(y_CH4,'y_CH4 = ')

disp(y_H2O,'y_H2O = ')

disp(y_CO,'y_CO = ')

disp(y_H2,'y_H2 = ')

//End

