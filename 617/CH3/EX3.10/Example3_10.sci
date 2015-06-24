clear;
clc();

// To find the total heat flow per foot of depth through the sction and the shape factor

k=0.9;                        // thermal conductivity of section material in Btu/hr-ft-degF

// Heat is considered to flow through fictitious rods and only half of the heat flows through symmetry axes    

Ta=300;Tb=441;Tc=600;Td=300;Te=432;Tf=600;Tg=600;Th=600;Ti=300;Tj=384;Tk=461;Tl=485;Tm=490;Tn=300;To=340;Tp=372;Tq=387;Tr=391;Ts=300;Tt=300;Tu=300; Tv=300;Tw=300;
// Above grid point temperatures are given in the question for the quarter section considered in degF(a,b,c...w are grid points)

q1=4*k*((Tc-Tb)/2+(Tf-Te)+(Tf-Tk)+(Tg-Tl)+(Th-Tm)/2);                           // Amount of heat coming from inside in Btu/hr
q2=4*k*((Tb-Ta)/2+(Te-Td)+(Tj-Ti)+(To-Tn)+(To-Tt)+(Tp-Tu)+(Tq-Tu)+(Tr-Tw)/2);   // Amount of heat going outside in Btu/hr
q=(q1+q2)/2;                  // average of heat going in and heat coming out
printf("\n Total heat flow per unit depth is %.1fBtu/hr",q);

S=q/(k*(Tc-Ta));              // shape factor in ft
printf("\n Shape factor is %.2fft",S)
