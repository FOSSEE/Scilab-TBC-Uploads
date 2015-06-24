//Example No. 3_05
//Decimal to binary
//Pg No. 48
clear ; close ; clc ;

d = 0.65
j = 1 ;

while d ~= 0
    fracp(j) = floor(d*2) //integral part of d*2
    d = d*2 - floor(d*2)  //Fractional part of d*2
    j = j+1 ;
    decp(j-1) = d
    p = 1
    
    for i = 1:j-2
        if abs(d - decp(i))< 0.001  then //Condition for terminating the recurring binary equivalent by 
            p = 0                        //finding out if the new fractional part is equal to any of the previous fractonal parts
            break  
        end
    end
    
    if p == 0 then
        break
    end
    
end
rec_p = fracp(i+1:j-1)     //Recurring part

rec_p = strcat(string(rec_p))
fracp = strcat(string(fracp))

disp(strcat( [fracp,rec_p] ),'Binary equivalent = ')
