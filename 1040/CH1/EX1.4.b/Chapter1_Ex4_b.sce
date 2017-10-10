//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-1 Ex1.4.b  Pg No. 23
//Title: Activation energy from packed bed data - II Order Reaction 
//=========================================================================================================
clear
clc
clf 
//INPUT
L= [0 1 2 3 4 5 6 9];//Bed length in feet(ft)
T=[330 338 348 361 380 415 447 458 ] //Temperature Corresponding the bed length given (°C) 
R=1.98587E-3;//Gas constant (kcal/mol K)

//CALCLATION
//Basis is 1mol of feed A(Furfural) X moles reacted to form Furfuran and CO 
x=(T-330)./130;//Conversion based on fractional temperature rise
n=length (T);
//6 moles of steam per mole of Furfural is used to decrease temperature rise in the bed
P_mol=x+7;//Total No. of moles in product stream
for i=1:(n-1)
    T_avg(i)= (T(i)+T(i+1))/2
    P_molavg(i)= (P_mol(i)+P_mol(i+1))/2
    delta_L(i)=L(i+1)-L(i)
    k_2(i)=((P_molavg(i))/delta_L(i))*((x(i+1)-x(i))/((1-x(i+1))*(1-x(i))))
    u(i)=(1/(T_avg(i)+273.15));
end
v=(log(k_2));
plot(u.*1000,v,'o');
xlabel("1000/T (K^-1)");
ylabel("ln k_2");
xtitle("ln k_2 vs 1000/T ");
i=length(u);
X=[u ones(i,1) ];
result= X\v;
k_0=exp(result(2,1));
E=(-R)*(result(1,1));

//OUTPUT
//Console Output
mprintf('========================================================================================\n')
mprintf('L \t \t T \t\t x \t\t T_average \t(7+x)ave \tk_2')
mprintf('\n(ft) \t \t (°C) \t\t   \t\t (°C) \t  ')
mprintf('\n========================================================================================')
for i=1:n-1
mprintf('\n%f \t %f \t %f ',L(i+1),T(i+1),x(i+1))
mprintf('\t %f \t %f \t %f',T_avg(i),P_molavg(i),k_2(i))
end
mprintf('\n\nThe activation energy from the slope =%f kcal/mol',E );

//File Output
fid= mopen('.\Chapter1-Ex4-b-Output.txt','w');
mfprintf(fid,'========================================================================================\n')
mfprintf(fid,'L \t \t T \t\t x \t\t T_average \t(7+x)ave \tk_2')
mfprintf(fid,'\n(ft) \t \t (°C) \t\t   \t\t (°C) \t  ')
mfprintf(fid,'\n========================================================================================')
for i=1:n-1
mfprintf(fid,'\n%f \t %f \t %f ',L(i+1),T(i+1),x(i+1))
mfprintf(fid,'\t %f \t %f \t %f',T_avg(i),P_molavg(i),k_2(i))
end
mfprintf(fid,'\n\nThe activation energy from the slope =%f kcal/mol',E );
mclose(fid);

//============================================================END OF PROGRAM===========================================
//Disclaimer: Least Square method is used to find the slope and intercept in this example.
// Hence the values differ from the graphically obtained values of slope and intercept in the textbook.
// Further, intermeidate values for Ex.1.4.b is not available/ reported in textbook and hence could not be compared. 
//Figure 1.8 is a plot between ln k_2 vs 1000/T instead of k_2 vs 1000/T as stated in the solution of Ex1.4.b

