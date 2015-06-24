//Chapter 7
//Example 7.1
//page 246
//To find incremental cost and load sharing
clear;clc;

///Let us use the program given in the Appendix G in the textbook to write
//a function that returns the value of lamda and Loading of each generator 
//when the total load on the plant is sent to the function
 
function [lamdaprev,Pg]=optimum(Pd)    
        n=2; //number of generators
        Alpha=[0.2 0.25];
        Beta=[40 30];
        lamda=35; //initial guess for lambda
        lamdaprev=lamda;
        eps=1; //tolerance
        deltalamda=0.25; //increment in lamda
        Pgmax=[125 125];
        Pgmin=[20 20];
        Pg=100*ones(n,1);
        while abs(sum(Pg)-Pd)>eps
            for i=1:n
                Pg(i)=(lamda-Beta(i))/Alpha(i);
                if Pg(i)>Pgmax(i) then
                    Pg(i)=Pgmax(i);
                end
                if Pg(i)<Pgmin(i) then
                    Pg(i)=Pgmin(i);
                end
           end
           if  (sum(Pg)-Pd)<0 then
               lamdaprev=lamda;
               lamda=lamda+deltalamda;
            else
               lamdaprev=lamda;
               lamda=lamda-deltalamda;   
           end
           end
endfunction


//to draw the table 7.1
printf('Table 7.1 Output of each unit and plant output for various values of lamda\n')
printf('--------------------------------------------------------------\n');
printf('Plant Lamda,        Unit 1        Unit 2        Plant Output  \n');
printf('Rs/MWh              Pg1,MW        Pg2,MW        (Pg1+Pg2),MW  \n');
printf('--------------------------------------------------------------\n');

Pd_matrix=[40 76 130 150 175 220 231.25 250];
for i=1:8
    [lamda,Pg]=optimum(Pd_matrix(i));
    printf('%0.2f               %0.2f         %0.2f          %0.2f\n',lamda,Pg(1),Pg(2),Pg(1)+Pg(2));
end
printf('--------------------------------------------------------------\n');

//To draw the Graphs 7.3 and 7.4

Pd_test=40:3.75:250;
[Pd_ro,Pd_co]=size(Pd_test)
for i=1:Pd_co
   [lamda,Pg]=optimum(Pd_test(i));
   lamda_test(i)=lamda;
   Pg1_test(i)=Pg(1);
   Pg2_test(i)=Pg(2);
end
Pg1_test=Pg1_test.'; //transposing without conjugating
Pg2_test=Pg2_test.';
lamda_test=lamda_test.';

subplot(211)
plot(Pd_test,lamda_test);
title('Incremental Fuel cost versus plant output');
xlabel('Plant output,MW');
ylabel('Incremental fuel cost,Rs/MWh');
set(gca(),"grid",[0,0])
get("current_axes");

subplot(212)
plot(Pd_test,Pg1_test,Pd_test,Pg2_test);
title('Output of each unit versus plant output');
xlabel('Plant output,MW');
ylabel('Unit output,MW');
legend(["Unit 1";"Unit 2"],[2]);
set(gca(),"grid",[0,0])
get("current_axes");