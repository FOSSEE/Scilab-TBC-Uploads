//Chapter 13
//Example 13.1
//page 522
//To find the generation shift factors and the line outage distribution factors
clear;clc;

//this problem can be thought to be solved by using gauss-siedel method using Zbus(X matrix given in table 13.1),but then in this method we need total line charging admittances to ground at each bus.Hence we cant solve this problem only using the given table 13.1,And we can use gauss-siedel method using Ybus by taking the values of impedances and line charging admittances of the system which is taken from the textbook "[1]Computer Methods in Power System Analysis,Stagg and El-Abiad,Page No 284"
//-----------------------------------------------------------------------------------------------------------------------

// Function to form the Ybus for primitve admittance values and line charging admittance values
function Ybus=formYbus(y_l,y_lc)
    Ybus=[y_l(1)+y_l(2)+y_lc(1)+y_lc(2)    -y_l(1)    -y_l(2)    0    0;
          -y_l(1)    y_l(1)+y_l(3)+y_l(4)+y_l(5)+y_lc(1)+y_lc(3)+y_lc(4)+y_lc(5)    -y_l(3)    -y_l(4)    -y_l(5);
          -y_l(2)    -y_l(3)    y_l(2)+y_l(3)+y_l(6)+y_lc(2)+y_lc(3)+y_lc(6)    -y_l(6)    0;
          0    -y_l(4)    -y_l(6)    y_l(6)+y_l(4)+y_l(7)+y_lc(6)+y_lc(4)+y_lc(7)    -y_l(7);
          0    -y_l(5)    0    -y_l(7)    y_l(5)+y_l(7)+y_lc(5)+y_lc(7)];
endfunction

//Function to incorporate load flow analysis for a given system
function P_line=load_flow(E,Pg,Qg,Pl,Ql,y_l,y_lc)
    
    //to retrieve Ybus for the given network parameters
    Y=formYbus(y_l,y_lc);
    
    //to form primitive admittance matrix and primitive line charging admittances that required later in the program
    yl=[0 y_l(1) y_l(2) 0 0;
       y_l(1) 0 y_l(3) y_l(4) y_l(5);
       y_l(2) y_l(3) 0 y_l(6) 0;
       0 y_l(4) y_l(6) 0 y_l(7);
       0 y_l(5) 0 y_l(7) 0];
    yc=[0 y_lc(1) y_lc(2) 0 0;
       y_lc(1) 0 y_lc(3) y_lc(4) y_lc(5);
       y_lc(2) y_lc(3) 0 y_lc(6) 0;
       0 y_lc(4) y_lc(6) 0 y_lc(7);
       0 y_lc(5) 0 y_lc(7) 0];

    // to optimize the evaluation, constants like KLs and YLs are evaluated only once outside the loop
    KL2=((Pg(2)-Pl(2))-(Qg(2)-Ql(2)))/Y(2,2);
    KL3=((Pg(3)-Pl(3))-(Qg(3)-Ql(3)))/Y(3,3);
    KL4=((Pg(4)-Pl(4))-(Qg(4)-Ql(4)))/Y(4,4);
    KL5=((Pg(5)-Pl(5))-(Qg(5)-Ql(5)))/Y(5,5);
    
    YL21=Y(2,1)/Y(2,2);    YL23=Y(2,3)/Y(2,2);    YL24=Y(2,4)/Y(2,2);    YL25=Y(2,5)/Y(2,2);
    YL31=Y(3,1)/Y(3,3);    YL32=Y(3,2)/Y(3,3);    YL34=Y(3,4)/Y(3,3);
    YL42=Y(4,2)/Y(4,4);    YL43=Y(4,3)/Y(4,4);    YL45=Y(4,5)/Y(4,4);
    YL52=Y(5,2)/Y(5,5);    YL54=Y(5,4)/Y(5,5);
    
    //to calculate bus voltages (Refer[1] stagg,pg 285)
    n=100;
    for i=1:n
        E(1)=E(1);
        E(2)=(KL2/E(2)')-YL21*E(1)-YL23*E(3)-YL24*E(4)-YL25*E(5);
        E(3)=(KL3/E(3)')-YL31*E(1)-YL32*E(2)-YL34*E(4);
        E(4)=(KL4/E(4)')-YL42*E(2)-YL43*E(3)-YL45*E(5);
        E(5)=(KL5/E(5)')-YL52*E(2)-YL54*E(4);
    end
    // to calculate line flows(Refer[1] stagg,pg 291)
    for i=1:5
        for j=1:5
            S(i,j)=E(i)'*(E(i)-E(j))*yl(i,j)+E(i)'*E(i)*yc(i,j);
        end
    end
    P_line=conj(S); //since P_line=P-jQ=conj(S)
    
endfunction
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//First we will calculate the line flows for the system which operating under normal condition (without any congincy)[taken as Base system for comparision]//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//ypq                    y'pq/2            line no      Buscode(p-q)     
yl1=1/(0.02+%i*0.06);    ylc_1=%i*0.030;   //l=1        line 1-2
yl2=1/(0.08+%i*0.24);    ylc_2=%i*0.025;   //l=2        line 1-3
yl3=1/(0.06+%i*0.18);    ylc_3=%i*0.020;   //l=3        line 2-3
yl4=1/(0.06+%i*0.18);    ylc_4=%i*0.020;   //l=4        line 2-4
yl5=1/(0.04+%i*0.12);    ylc_5=%i*0.015;   //l=5        line 2-5
yl6=1/(0.01+%i*0.03);    ylc_6=%i*0.010;   //l=6        line 3-4
yl7=1/(0.08+%i*0.24);    ylc_7=%i*0.025;   //l=7        line 4-5

y_l_vector=[yl1 yl2 yl3 yl4 yl5 yl6 yl7];
y_lc_vector=[ylc_1 ylc_2 ylc_3 ylc_4 ylc_5 ylc_6 ylc_7];


//Assumed voltage                Generation                      load                  Buscode
//                         MW                MVAR          MW            MVAR        
E1=1.06+%i*0;            Pg1=0;             Qg1=%i*0;      Pl1=0;        Ql1=%i*0;          //1
E2=1+%i*0;               Pg2=0.4;           Qg2=%i*0.3;    Pl2=0.2;      Ql2=%i*0.1;        //2
E3=1+%i*0;               Pg3=0;             Qg3=%i*0;      Pl3=0.45;     Ql3=%i*0.15;       //3
E4=1+%i*0;               Pg4=0;             Qg4=%i*0;      Pl4=0.40;     Ql4=%i*0.05;       //4
E5=1+%i*0;               Pg5=0;             Qg5=%i*0;      Pl5=0.60;     Ql5=%i*0.10;       //5

E=[E1 E2 E3 E4 E5];    Pg=[Pg1 Pg2 Pg3 Pg4 Pg5];    Qg=[Qg1 Qg2 Qg3 Qg4 Qg5];
Pl=[Pl1 Pl2 Pl3 Pl4 Pl5];    Ql=[Ql1 Ql2 Ql3 Ql4 Ql5];

P_base=load_flow(E,Pg,Qg,Pl,Ql,y_l_vector,y_lc_vector);
P_base=P_base*100; //converting back to MW and MVARs




////////////////////////////////////////////////////////////////////////////////////////////////////////////
//To find generation shift factor let us remove the generator at each of PV buses and calculate line flows//
////////////////////////////////////////////////////////////////////////////////////////////////////////////

//(i)when generator at slack bus trips
  Pg1_old=Pg1; //required for the calculation of change in MWs
  Pg1=0;Qg1=0; //generation remains same
  Pg=[Pg1 Pg2 Pg3 Pg4 Pg5];    Qg=[Qg1 Qg2 Qg3 Qg4 Qg5]; //updating the changed values

 //conducting load flow studies
  P_G_1=load_flow(E,Pg,Qg,Pl,Ql,y_l_vector,y_lc_vector);
  P_G_1=P_G_1*100; //converting back to MW and MVARs
  alpha1=(real(P_G_1)-real(P_base))/((Pg1_old-Pg1+0.001)*100); //0.001 is added to eliminate divide by zero error
  alpha1=tril(alpha1); //only lower triangular matrix is required
  l1=[alpha1(2,1) alpha1(3,1) alpha1(3,2) alpha1(4,2) alpha1(5,2) alpha1(4,3) alpha1(5,4)];
//(ii)When generator at Bus2 trips
  Pg2_old=Pg2; //required for the calculation of change in MWs
  Pg2=0;Qg2=0; Pg1=0;Qg1=0;
  Pg=[Pg1 Pg2 Pg3 Pg4 Pg5];    Qg=[Qg1 Qg2 Qg3 Qg4 Qg5]; //updating the changed values

 //conducting load flow studies
  P_G_2=load_flow(E,Pg,Qg,Pl,Ql,y_l_vector,y_lc_vector);
  P_G_2=P_G_2*100; //converting back to MW and MVARs
  alpha2=(real(P_G_2)-real(P_base))/((Pg2_old-Pg2)*100);
  alpha2=tril(alpha2); //only lower triangular matrix is required
  l2=[alpha2(2,1) alpha2(3,1) alpha2(3,2) alpha2(4,2) alpha2(5,2) alpha2(4,3) alpha2(5,4)];
//To print the results of generator shift factors

printf('Generator Shift Factor for Five-bus System\n');
printf('--------------------------------------------------------\n');
printf('Lines\t\t\t Bus 1 \t\t\tBus 2\n');
printf('--------------------------------------------------------\n');
for i=1:7
        printf('l = %d\t\t\t  %d\t\t\t%0.4f\n',i,l1(i),l2(i));
end
printf('--------------------------------------------------------\n');
/////////////////////////////////////////////////////////////////////////////////////////////////
//To find Line Outage Distribution Factors let us remove each line and calculate the line flows//
/////////////////////////////////////////////////////////////////////////////////////////////////

//changing the network back to normal system
Pg2=0.4;           Qg2=%i*0.3;

//copying the original values of the network parameters
y_l_vector_normal=y_l_vector;        y_lc_vector_normal=y_lc_vector;
  Pg=[Pg1 Pg2 Pg3 Pg4 Pg5];    Qg=[Qg1 Qg2 Qg3 Qg4 Qg5]; //updating the changed values
//when jth line trips the load flow analysis is done as follows
for j=1:7
    y_l_vector(j)=0;y_lc_vector(j)=0;
    P_L=load_flow(E,Pg,Qg,Pl,Ql,y_l_vector,y_lc_vector); //load flow anlysis
    P_L=P_L*100;
    select j,
      case 1 then fi0=P_base(2,1),
      case 2 then fi0=P_base(3,1),
      case 3 then fi0=P_base(3,2),
      case 4 then fi0=P_base(4,2),
      case 5 then fi0=P_base(5,2),
      case 6 then fi0=P_base(4,3),
      case 7 then fi0=P_base(5,4),
    end
   d0=(real(P_L)-real(P_base))/real(fi0);
   d(:,j)=[d0(2,1); d0(3,1); d0(3,2); d0(4,2); d0(5,2); d0(4,3); d0(5,4)];
   y_l_vector=y_l_vector_normal; y_lc_vector=y_lc_vector_normal; //changing the system back to normal
end

//when a line trips power flow in that line is zero,this is not accounted in load flow. So accounting this by making all diagonal elemnts of d=0
for i=1:7
    d(i,i)=0;
end

//To print the results of line outage distribution factors
printf('\n\n\n\nLine Outage Distribution Factor for Five-bus System\n');
printf('------------------------------------------------------------------------------------------------------------------------\n');
printf('Lines  \t\tj=1\t\tj=2\t\tj=3\t\tj=4\t\tj=5\t\tj=6\t\tj=7\n');
printf('------------------------------------------------------------------------------------------------------------------------\n');
for l=1:7
    printf('l = %d\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f\t\t%0.4f\n',l,d(l,1),d(l,2),d(l,3),d(l,4),d(l,5),d(l,6),d(l,7));
end
printf('------------------------------------------------------------------------------------------------------------------------\n\n\n');



