//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc. USA,pp 436.
//Chapter-8 Ex8.3.a Pg No.348
//Title:Apparent rate constant and consistency
//===========================================================================================================

clear
clc
//INPUT
LHSV_inv=[0.75 1.39];//Refer table 8.2 Test Results (Liquid Hourly Space Velocity)
X_S=[0.77 0.83];//Refer table 8.2 Percentage Sulphur removal

//CALCULATION
for i=1:2
    kapp_rhob(i)=log((1/(1-X_S(i))))*(1/LHSV_inv(i));//Refer Equation 8.21
    
end
L=LHSV_inv(2)/LHSV_inv(1);
kapp_ratio=kapp_rhob(1)/kapp_rhob(2);
n=log10(kapp_ratio)/log10(L);

//OUTPUT
//Console Output
mprintf('\n\tThe Apparent rate constants are \n\t Run1: %0.2f hr-1 \n\t Run2: %0.2f hr-1  ',kapp_rhob(1),kapp_rhob(2))
mprintf('\n\tThe exponent value = %0.1f ',n);  
mprintf('\n\tExponent value greater than 0.5 hence the Eq.(8.24) is not consistent');
mprintf('\n\tThe error may be due to error in assuming a first order reaction');

//File Output
fid = mopen('E:\Chapter8_Ex3_a_Output.txt', 'w');
mfprintf(fid,'\n\tThe Apparent rate constants are \n\t Run1: %0.2f hr-1 \n\t Run2: %0.2f hr-1  ',kapp_rhob(1),kapp_rhob(2))
mfprintf(fid,'\n\tThe exponent value %0.1f ',n);
mfprintf(fid,'\n\tExponent value greater than 0.5 hence the Eq.(8.24) is not consistent');
mfprintf(fid,'\n\tThe error maybe due to error in assuming a first order reaction');
mclose(fid);
//============================================END OF PROGRAM=================================================

