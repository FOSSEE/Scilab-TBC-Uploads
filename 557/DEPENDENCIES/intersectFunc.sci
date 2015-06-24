//**********************intersectFunc scilab function************************//
//Takes argument as three arrays namely f1,f2(functions) and their domain    //
//It finds intersecting points in all the subdomains                         //
//Gives output as point(s) of intersection of the two functions              // 
// Domain should be INCREASING                                               //
//Created by : Jay Chakra (www.jaychakra.co.cc)                              //
//             Undergraduate                                                 //
//             Aerospace Engineering                                         //
//             IIT Bombay                                                    //
//Comments, suggestions, bugs welcomed at jaychakra.jc@gmail.com             //
//***************************************************************************//

function[y] = intersectFunc(f1,f2,domain)
    L1 = length(f1);
    L2 = length(f2);
    L3 = length(domain);
    if((L1~=L2)|(L1~=L3)|(L2~=L3))then
        error("Check Dimensions of input parameters !!  ");
    else
        R = 1;
        y = [];
            for(i=1:L1-1)
                N1 = f1(i+1)-f1(i); 
                N2 = f2(i+1)-f2(i);
                D = domain(i+1)-domain(i);
                x = poly(0,'x');
                //Writing equation of straight lines joining the terminal points
                f(1) = f1(i) +(N1/D)*(x-domain(i));
                f(2) = f2(i) +(N2/D)*(x-domain(i));
                difference = f(2) - f(1);
                root = roots(difference);        //Solution will be the roots of difference
                if(difference == 0) then         //if both functions are same
                    y = domain;
                    break;
                elseif(root~=[]&root<=domain(i+1)&root>=domain(i)) then //if roots lie in the subdomain
                    y(R) = root;
                    R=R+1;
                 end,
             end,
    end
endfunction
