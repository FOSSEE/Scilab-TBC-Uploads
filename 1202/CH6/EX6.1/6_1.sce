clear
clc

//Example 6.1
disp('Example 6.1')

//Fuel flow rate appended with ones for intercept in regression
fuel=[1 2.3 2.9 4 4.9 5.8 6.5 7.7 8.4 9]; 
X=[ones(1,10);fuel]'; 
Y=[2 4.4 5.4 7.5 9.1 10.8 12.3 14.3 15.8 16.8]'; //Power generated

Bhat=inv(X'*X)*X'*Y;

mprintf('\n Linear model \n B1_hat=%f \n B2_hat=%f',Bhat')


//For better accuracy we can fit higher order model
X_new=[ones(1,10);fuel;fuel.^2]';
Bhat_new=inv(X_new'*X_new)*X_new'*Y;
mprintf('\n \n Quadratic model \n B1_hat=%f \n B2_hat=%f \n B3_hat=%f',Bhat_new')
Output_table=[fuel' Y X*Bhat X_new*Bhat_new];

//mprintf('\n Fuel      Power Generated      Linear Model    Quadratic Model %f %f',Output_table(:,1),Output_table(:,2))
//disp(Output_table)

//Table 6.1
mprintf('\n \n Table 6.1  %s','')
mprintf('\n       ui        yi        Linear Model      Quadratic Model  %s','')

mprintf('\n    %f   %f    %f    %15f',Output_table)


//Error calculations ----(This is not given in book-requires understanding of statistics)
Yhat=X*Bhat; //Predicted Y from regression variables
S_lin=(Y-Yhat)'*(Y-Yhat); //Sum of errors in Y for linear model --eqn 6.9
S_quad=(Y-X_new*Bhat_new)'*(Y-X_new*Bhat_new); //Errors in Y for quadratic model
mprintf('\n    %25s%f    %10s%f','S=',S_lin,'S=',S_quad)

n=length(fuel);
sigma=S_lin/(n-1)*(inv(X'*X));
bounds=(sigma.^0.5)/sqrt(n)*2.262;

mprintf('\n The errors in Bhats are not calculated because the procedure is not...
\n given in the solution of the example')


