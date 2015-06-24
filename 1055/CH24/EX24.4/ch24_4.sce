// illustrate the dynamic programming for preparing an optimal unit commitment.

clear
clc;
function[F1]=F1(P1)
    F1=7.1*P1+.00141*(P1^2)
    mprintf("F1(%.0f)=%.1f\n",P1,F1);
endfunction
function[f2]=f2(P2)
    f2=7.8*P2+.00195*(P2^2)
    mprintf("f2(%.0f)=%.0f\n",P2,f2);
endfunction
function[F]=F(P1,P2)
    F1=7.1*P1+.00141*(P1^2)
    F2=7.8*P2+.00195*(P2^2)
    F=F1+F2
    mprintf("F1(%.0f)+f2(%.0f)=%.0f\n",P1,P2,F);
    endfunction
P1max=600;
P2max=450;
mprintf("Unit Commitment using Load 500MW\n")
F1(500);
mprintf("Since min. Power of second unit is 100MW , we find\n");
F(400,100);
F(380,120);
F(360,140);
mprintf("Therefore for load 500 MW , the load commitment on unit 1 is 400 MW and that on 2 is 100 MW which gives min. cost\n");
mprintf("Next we increase the load by 50 MW and  loading unit 1 we get, \n");
F1(550);
mprintf("Also if we distribute a part of load to unit 2 we get ,\n")
F(450,100);
F(400,150);
F(350,200);
mprintf("Therefore for load 550 MW , the load commitment on unit 1 is 400 MW and that on 2 is 150 MW which gives min. cost\n");



