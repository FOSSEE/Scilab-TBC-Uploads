//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-3 Ex3.2 Pg No. 96
//Title:Residence time and heat generation for four STR's in series
//========================================================================================
clear
clc
// COMMON INPUT
X_A=0.95;//Given conversion
t_batch=6;//Batch time to reach the desired conversion
N=4//No.of reactors in series
X_final=X_A;

//CALCULATION (Ex3.2.a)
k=log((1/(1-X_A)))/t_batch;//Refer equation 3.29 Pg No. 90
t_1=((1/(1-X_A))^(1/N)-1)/k;//Refer equation 3.40 Pg No. 94
t_Tot=N*t_1;

//OUTPUT (Ex3.2.a)
mprintf('\n OUTPUT Ex3.2.a');
mprintf('\n==================================================================');
mprintf('\nThe total residence time of the four reactors in series= %f hr',t_Tot);

//=======================================================================================

//Title:Heat generation in CSTR in Series
//=============================================================================================================
//CALCULATION (Ex3.2.b)
t_1=((1/(1-X_final))^(1/N)-1)/k;//Refer equation 3.40 Pg No. 94
for i=1:N
    X(i)=1-(1/(1+k*t_1)^(i));
end

delQ_by_Q(1)=(X(1))/X_final; //  Ratio of heat generated in 1st reactor 
for i=1:N-1
    delQ_by_Q(i+1)=(X(i+1)-X(i))/X_final;  // Ratio of heat generated in 2nd, 3rd and 4th reactors 
end

//OUTPUT (Ex3.2.b)
mprintf('\n========================================================================================\n')
mprintf('\n OUTPUT Ex3.2.b');
mprintf('\n==================================================================');
mprintf('\nReactor vessel \t Conversion \t Fraction of total heat released \n')
mprintf('\n==================================================================')
for i=1:N
    mprintf('\n %d \t \t %0.3f \t \t \t %0.3f \n',i,X(i),delQ_by_Q(i))
end

//FILE OUTPUT
fid=mopen('.\Chapter3-Ex2-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex3.2.a');
mfprintf(fid,'\n==================================================================');
mfprintf(fid,'\nThe total residence time of the four reactors in series= %f hr',t_Tot);
    mfprintf(fid,'\n==================================================================')
    mfprintf(fid,'\nReactor vessel \t Conversion \t Fraction of total heat released \n')
    mfprintf(fid,'\n==================================================================')
for i=1:N
    mfprintf(fid,'\n %d \t \t %0.3f \t \t \t %0.3f \n',i,X(i),delQ_by_Q(i))
end
mclose(fid);


//=============================================================END OF PROGRAM================================
