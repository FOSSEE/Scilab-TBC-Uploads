//calculates//
G=210;
H=0.12;
syms Eo Er
printf("for closed loop system")
sys=G/.H;  //Eo/Er=G/(1+GH)
disp(sys,"Eo/Er=")
Eo=240 //given
Er=Eo/8.0152;
disp(Er,"Er=")
printf("for open loop system")
disp(G,"Eo/Er=")
Er=Eo/G;
G=210;
disp(Er,"Er=")
//printf("since G is reduced by 12%, the new value of gain is 784.8V");
S=1/(1+G*H)
disp(S,"(%change in M)/(%change in G)=")
disp(12,"%CHANGE IN G=")
y=12*0.03869;
disp(y,"%CHANGE IN M=")
printf("for open loop system")
disp(28.8*100/240,"%change in Eo")
