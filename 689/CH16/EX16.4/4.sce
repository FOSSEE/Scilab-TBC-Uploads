clc; funcprot(0);
//Example 16.4 Power required at level flight at altitude
a10K = 1.16;
a15K = 1.26;
alp = [-4 -3 -2 -1 0 4 8 12 16 18 19]';                      //From table 16.1
V = [ 228 161 130 112 100 74.9 62.3 55.2 50.2 48.1 48.1]';   //From table 16.1
HPreq = [566 199 111 76 60 34 29 29 30 31 33]';             //From table 16.1

Result = zeros(11,7);
Result(:,1) = alp;
Result(:,2) = V;
Result(:,3) = HPreq;
Result(:,4) = a10K*V;
Result(:,5) = a10K*HPreq;
Result(:,6) = a15K*V;
Result(:,7) = a15K*HPreq;

disp(Result,"!!AlphaSL V_SL   HPreq_SL V_10K    HPreq_10K   V_15K    HPreq_15K  !!") ;
clf();
plot2d([Result(:,2),Result(:,4),Result(:,6)],[Result(:,3),Result(:,5),Result(:,7)],rect = [0 ,0,180,180]);
legend(['Sealevel';'10,000 altitude'; '15,000 altitude'],2); 
xlabel("Miles Per Hour");
ylabel("HorsePower");
title("Power Curves ");
set(gca(),"grid",[1 1])
 
