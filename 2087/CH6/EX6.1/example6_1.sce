

//exampple 6.1
//determine maximum reservior level
//maximum discharge over spillway
//plot inflow and routed hydrograph and find peak flow and peak lag
clc;funcprot(0);
//given
e=[100 100.3 100.6 100.9 101.2 101.5 101.8 102.1 102.4 102.7];    //elevation(km)
A=[405 412 420 425 428 436 445 453 460 469];          //area
o=[0 14.9 42.2 77.3 119 169 217 272 334 405];         //outflow
c(1)=0;
for i=2:10
    dh(i)=e(i)-e(i-1);
    s(i)=dh(i)/3*(A(i-1)+A(i)+(A(i-1)*A(i))^0.5);       //storage between contours
    c(i)=c(i-1)+s(i);                        //cumulative storage
    h(i)=c(i)/1.08;                         //2s/t
    h1(i)=h(i)-o(i);                         //2s/t-o
    h2(i)=h(i)+o(i);                         //2s/t+o
end
T=[0:6:102];
I=[42 45 57 88 147 210 272 340 350 338 314 288 263 240 198 170 143 120];  //inflow
h4=[0 0 60 122 185 266 362 455 545 605 623 620 600 575 550 515 470 430];    //2s/t-0 obtained from curve a
O=[0 10 24 42 74 130 194 260 316 334 328 312 286 264 236 204 177 150];     //outflow read from curve a
re=[100.2 100.39 100.58 100.86 101.26 101.65 102.03 102.31 102.4 102.37 102.3 102.18 102.06 101.9 101.72 101.56 102.4];   //reservior elevation read from curve b
for i=2:17
    t(i)=I(i-1)+I(i);                        //I1+I2
    h3(i)=t(i)+h4(i);                        //2s/t+O
end
pt=T(10)-T(9);
d=I(9)-O(10);
//results
mprintf(" maximum reservior level=%f m.",re(10));
mprintf("\nmaximum discharge over spillway=%f cumecs.",O(10));
mprintf("\nreduction in peak discharge=%f cumecs.",d);
mprintf("\npeak lag=%f hours.",pt);
