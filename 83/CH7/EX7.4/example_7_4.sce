//Chapter 7
//Example 7.4
//page 263
//To find required generation for each plant and losses incurred
clear;clc;

///Let us use the program given in the Appendix G in the textbook which includes penalty factor also to write
//a function that returns the value of lamda,Loading of each generator and losses
//when the total load on the plant is sent to the function

function [lamda,Pg,PL]=optimum2(Pd)
n=2; //no of generators
Alpha=[0.02 0.04];
Beta=[16 20];
lamda=20; //initial value of lamda
lamdaprev=lamda;
eps=1; //tolerance
deltalamda=0.1;
Pgmax=[200 200];
Pgmin=[0 0];
B=[0.001 0;0 0];
Pg=zeros(n,1);
noofiter=0;
PL=0;
Pg=zeros(n,1);
while abs(sum(Pg)-Pd-PL)>eps
    for i=1:n
        sigma=B(i,:)*Pg-B(i,i)*Pg(i);
        Pg(i)=(1-(Beta(i)/lamda)-(2*sigma))/(Alpha(i)/lamda+2*B(i,i));
        PL=Pg.'*B*Pg;
        if Pg(i)>Pgmax(i) then
            Pg(i)=Pgmax(i);
        end
        if Pg(i)<Pgmin(i) then
            Pg(i)=Pgmin(i);
        end
    end
    PL=Pg.'*B*Pg;
    if(sum(Pg)-Pd-PL)<0 then
        lamdaprev=lamda;
        lamda=lamda+deltalamda;
    else
        lamdaprev=lamda;
        lamda=lamda-deltalamda;
    end
    noofiter=noofiter+1;
    Pg;
end
endfunction

//In this example let us take the answer .i.e load(Pd)=237.04MW and calculate 
//lamda so that we can use the algorithm used in the textbook
Pd=237.04
[lamda_test,Pg_test,PL_test]=optimum2(Pd);
printf('\nLagrange''s multiplier (lamda) is\n Lamda =%0.1f',lamda_test);
printf('\n\nRequired generation for optimum loading are \n Pg1=%0.2f MW \n Pg2=%d MW\n',Pg_test(1),Pg_test(2));
printf('\nThe transmission power loss is\n PL=%0.2f MW',PL_test);
printf('\n\nThe load is \n Pd=%0.2f MW',Pd);

