clc 
//ex1.2

//element A
disp('ELEMENT A :')
V_a=12;
i_a=2;
P_a=V_a*i_a;      //passive reference configuration (current enters through +ve polarity)
if(P_a>0) then,      //absorption of power
    disp(P_a,'Power for element A in watts is')
    disp('As a battery, element A is being charged')
elseif(P_a<0) then,      //supplying of power
    disp(P_a,'Power for element A in watts is')
    disp('As a battery, element A is being discharged')
end

//element B
disp('ELEMENT B')
V_b=12;
i_b=1;
P_b=-V_b*i_b;      //opposite to passive reference configuration (current enters through -ve polarity)
if(P_b>0) then,      //absorption of power
    disp(P_b,'Power for element B in watts is')
    disp('As a battery, element B is being charged')
elseif(P_b<0) then,      //supplying of power
    disp(P_b,'Power for element B in watts is')
    disp('As a battery, element B is being discharged')
end

//element C
disp('ELEMENT C')
V_c=12;
i_c=-3;
P_c=V_c*i_c;      //passive reference configuration (current enters through +ve polarity)
if(P_c>0) then,      //absorption of power
    disp(P_c,'Power for element C in watts is')
    disp('As a battery, element C is being charged')
elseif(P_c<0) then,      //supplying of power
    disp(P_c,'Power for element C in watts is')
    disp('As a battery, element C is being discharged')
end
