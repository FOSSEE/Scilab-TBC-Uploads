//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-3 Ex3.2.b Pg No. 96
//Title:Heat generation in CSTR in Series
//=============================================================================================================
clear
clc
//INPUT
// For a first order reaction
X_final=0.95;//Given  final conversion
k=0.5;//Solved in Ex3.2.a
N=4;//Total No.of reactors in series

//CALCULATION
t_1=((1/(1-X_final))^(1/N)-1)/k;//Refer equation 3.40 Pg No. 94
for i=1:N
    X(i)=1-(1/(1+k*t_1)^(i));
end

delQ_by_Q(1)=(X(1))/X_final; //  Ratio of heat generated in 1st reactor 
for i=1:N-1
    delQ_by_Q(i+1)=(X(i+1)-X(i))/X_final;  // Ratio of heat generated in 2nd, 3rd and 4th reactors 
end

//OUTPUT
//Console Output
    mprintf('\n==================================================================')
    mprintf('\nReactor vessel \t Conversion \t Fraction of total heat released \n')
    mprintf('\n==================================================================')
for i=1:N
    mprintf('\n %d \t \t %0.3f \t \t \t %0.3f \n',i,X(i),delQ_by_Q(i))
end
//File Output
fid=mopen('.\Chapter3_Ex2_b_Output.txt', 'w');
    mfprintf(fid,'\n==================================================================')
    mfprintf(fid,'\nReactor vessel \t Conversion \t Fraction of total heat released \n')
    mfprintf(fid,'\n==================================================================')
for i=1:N
    mfprintf(fid,'\n %d \t \t %0.3f \t \t \t %0.3f \n',i,X(i),delQ_by_Q(i))
end
mclose(fid);
//=============================================================END OF PROGRAM================================

