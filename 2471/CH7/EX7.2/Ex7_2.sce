clear ;
clc;
// Example 7.2
printf('Example 7.2\n\n');
printf('Page No. 201\n\n');

//From Example 2.1

// given
C= 35000;// cost of boiler  in Pound
C_grant=.25;// Capital grant available from goverment
E= -(C-(C_grant*C));// Net expenditure
Fs= 15250;// Fuel Saving
r_i = 0.15;// interest
r_t = 0.55;// tax

a = [0 E Fs 0 E+Fs r_i*(E+Fs) 0 ]
bal_1 = a(5)+a(6)-a(7)// Total Balance after 1st year

c_all = 0.55;// capital allowance in 2nd year
C_bal= (bal_1+0+Fs+(-(c_all*E)));// Cash Balance after 2nd year
b = [bal_1 0 Fs -(c_all*E) C_bal r_i*C_bal r_t*(Fs+(r_i*C_bal))];
bal_2 = b(5)+b(6)-b(7)//Total  Balance after 2nd year

c = [bal_2 0 Fs 0 bal_2+Fs r_i*(bal_2+Fs) r_t*(Fs+(r_i*(bal_2+Fs)))]
bal_3= c(5)+c(6)-c(7)// Total  Balance after 3rd year

if(bal_2>0) then
    disp('Pay back period is of two year')
else
    disp('Pay back period is of three year')
end

printf('Total saving at the end of second year is %3.0f Pound\n',bal_2);
printf('Total saving at the end of third year is %3.0f Pound\n\n',bal_3);
// Deviation in answer due to direct substitution


printf('The data in example 2.1 indicated that:- \n Saving could be made by replacing exising oil-fired burners by new burners requiring considerably less atomising steam.\n The financial saving are 15.25*10^3 Pound per year for an insulation and capital cost of 35*10^3 Pound.')
